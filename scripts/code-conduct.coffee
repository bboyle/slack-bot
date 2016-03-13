codeOfConduct = """
Code of Conduct

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus nulla et dolor mollis sollicitudin. Suspendisse nec tristique enim. Phasellus aliquet lorem vitae lobortis tempor. Maecenas pretium id quam a mollis. Fusce aliquam enim vel gravida semper. Sed ornare lorem luctus, porta erat dictum, volutpat orci. Nam volutpat purus et elit molestie, eleifend accumsan velit cursus. Pellentesque id augue in diam tincidunt fringilla. In hac habitasse platea dictumst. Sed velit arcu, porttitor sit amet semper eu, auctor quis ex. Proin vehicula, orci rhoncus pharetra aliquam, ex massa bibendum est, a pellentesque augue risus et arcu. Quisque sed tristique tortor, vitae lobortis enim. Nullam at malesuada ex, nec blandit enim.

Praesent commodo ornare augue, ut porta leo semper quis. Praesent id rhoncus felis. Pellentesque sit amet turpis elementum, feugiat lectus dignissim, mattis ligula. Donec id erat sed augue euismod mollis. Donec convallis finibus erat, et tincidunt ipsum. Aliquam id venenatis erat, in tempor eros. Sed convallis, sapien vitae venenatis maximus, purus nibh sagittis tellus, a bibendum magna augue sed nunc. Curabitur sed interdum mauris.
"""


module.exports = (robot) ->

  # extract username from response
  # http://www.michikono.com/2015/07/10/in-depth-tutorial-on-writing-a-slackbot/
  get_username = (res) ->
    "#{res.message.user.name}"

  # share code of conduct with a user
  share_code_conduct = (username) ->
    robot.messageRoom username, codeOfConduct


  # when a new user joins #general (i.e. joins slack team)
  # send them the code of conduct
  robot.enter (res) ->
    if res.message.room == 'general'
      share_code_conduct get_username(res)


  # when a user mentions the code of conduct
  # send it to them
  robot.hear /\b(CoC|code\s+of\s+conduct)\b/i, (res) ->
    # send private message to user
    share_code_conduct get_username(res)
