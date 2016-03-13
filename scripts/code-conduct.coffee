codeOfConduct = """
Code of Conduct

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus nulla et dolor mollis sollicitudin. Suspendisse nec tristique enim. Phasellus aliquet lorem vitae lobortis tempor. Maecenas pretium id quam a mollis. Fusce aliquam enim vel gravida semper. Sed ornare lorem luctus, porta erat dictum, volutpat orci. Nam volutpat purus et elit molestie, eleifend accumsan velit cursus. Pellentesque id augue in diam tincidunt fringilla. In hac habitasse platea dictumst. Sed velit arcu, porttitor sit amet semper eu, auctor quis ex. Proin vehicula, orci rhoncus pharetra aliquam, ex massa bibendum est, a pellentesque augue risus et arcu. Quisque sed tristique tortor, vitae lobortis enim. Nullam at malesuada ex, nec blandit enim.

Praesent commodo ornare augue, ut porta leo semper quis. Praesent id rhoncus felis. Pellentesque sit amet turpis elementum, feugiat lectus dignissim, mattis ligula. Donec id erat sed augue euismod mollis. Donec convallis finibus erat, et tincidunt ipsum. Aliquam id venenatis erat, in tempor eros. Sed convallis, sapien vitae venenatis maximus, purus nibh sagittis tellus, a bibendum magna augue sed nunc. Curabitur sed interdum mauris.
"""




module.exports = (robot) ->

  # http://www.michikono.com/2015/07/10/in-depth-tutorial-on-writing-a-slackbot/
  get_username = (res) ->
    "#{res.message.user.name}"

  robot.hear /\b(CoC|code\s+of\s+conduct)\b/i, (res) ->
    # send private message to user
    robot.messageRoom get_username(res), codeOfConduct


  enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
  leaveReplies = ['Are you still there?', 'Target lost', 'Searching']

  # when a new user joins #general (i.e. joins slack team)
  # send them the code of conduct
  robot.enter (res) ->
    console.dir res, {depth: 2}
    if res.message.room == 'conduct'
      robot.messageRoom get_username(res), codeOfConduct
    res.send res.random enterReplies

  robot.leave (res) ->
    res.send res.random leaveReplies
