(1..100).each do |number|
  Task.create(status: '未完了', content: 'testタスク' + number.to_s)
end