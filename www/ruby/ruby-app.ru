require_relative './app_def'

app = Proc.new do |env|
    params=env["rack.input"].read.split(',').map(&:to_i)
    result=app_def *params
    ['200', {
        'Content-Type' => 'text/plain',
    }, ["#{result}\n"] ]
end

run app

 {
        "applications": {
                "example_ruby": {
                        "type": "ruby",
                        "user": "nobody",
                        "processes": 2,
                        "script": "/usr/share/doc/unit-ruby/examples/ruby-app.ru"
                }
        },

        "listeners": {
                "*:8700": {
                        "application": "example_ruby"
                }
        }
 }
