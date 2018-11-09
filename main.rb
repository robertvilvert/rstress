require 'redis'

ENV['LOOPX'] ||= '30'
loopx = ENV['LOOPX']
ENV['LOG'] ||= '0'
log = ENV['LOG'].to_i

@redis ||= Redis.new(:url => (ENV["REDIS_URL"] || 'redis://192.168.193.158:6379'))

def set_redis(id, time)
  @redis.hset("time:#{id}", "time", time)

end


def show_log(count, time, key_id)
 puts "Count: #{count} | Time Now: #{time} | Object ID: #{key_id}"
end

count = 1
while count < loopx.to_i  do
	time = Time.now
  key_id = time.object_id
	t = Thread.new{set_redis(key_id, time)}
	t.join
  show_log(count, time, key_id) if log == 1
	count +=1

end


puts 'Shutting down...'
sleep 10
