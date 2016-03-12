codeOfConduct = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dapibus nulla et dolor mollis sollicitudin. Suspendisse nec tristique enim. Phasellus aliquet lorem vitae lobortis tempor. Maecenas pretium id quam a mollis. Fusce aliquam enim vel gravida semper. Sed ornare lorem luctus, porta erat dictum, volutpat orci. Nam volutpat purus et elit molestie, eleifend accumsan velit cursus. Pellentesque id augue in diam tincidunt fringilla. In hac habitasse platea dictumst. Sed velit arcu, porttitor sit amet semper eu, auctor quis ex. Proin vehicula, orci rhoncus pharetra aliquam, ex massa bibendum est, a pellentesque augue risus et arcu. Quisque sed tristique tortor, vitae lobortis enim. Nullam at malesuada ex, nec blandit enim.

Praesent commodo ornare augue, ut porta leo semper quis. Praesent id rhoncus felis. Pellentesque sit amet turpis elementum, feugiat lectus dignissim, mattis ligula. Donec id erat sed augue euismod mollis. Donec convallis finibus erat, et tincidunt ipsum. Aliquam id venenatis erat, in tempor eros. Sed convallis, sapien vitae venenatis maximus, purus nibh sagittis tellus, a bibendum magna augue sed nunc. Curabitur sed interdum mauris.

Donec eu risus tellus. Morbi ultricies sit amet ante non aliquet. Nam eu justo viverra, ornare justo sed, aliquet nulla. Vestibulum convallis pretium venenatis. Nulla vestibulum ante vitae est iaculis, sed tempor neque commodo. Proin mattis blandit magna ac commodo. Proin sit amet nisi tempus, tempus lacus sit amet, posuere est. Aliquam condimentum nec arcu nec commodo. Proin eu faucibus mi. Morbi rhoncus laoreet sodales. Sed imperdiet sem quam, tempus dapibus justo pretium convallis. Quisque et mauris purus.

Vestibulum in nisl a sapien tempus ullamcorper. Pellentesque fringilla, augue non porttitor auctor, purus odio sollicitudin urna, ut placerat mauris urna eu mauris. Nam molestie imperdiet mollis. Donec nec feugiat metus, varius viverra augue. Suspendisse tempus bibendum ante non consequat. Maecenas vestibulum fermentum dolor, in vulputate ex porttitor ac. Ut porttitor, augue eget finibus gravida, odio orci ornare erat, non lobortis justo mauris sed leo. Sed tincidunt malesuada facilisis. Proin at venenatis ipsum, eget eleifend ante. Etiam auctor lorem eget lectus volutpat posuere. Nulla sem quam, ultricies at imperdiet vel, varius sit amet est. Vivamus purus orci, porta vel sapien ac, dapibus vestibulum nulla. Proin scelerisque neque eu felis lobortis, id ornare felis sagittis. Vivamus eget neque at sapien condimentum imperdiet.

Curabitur eu mollis nisl. Phasellus a enim luctus, convallis lectus id, finibus erat. Praesent justo magna, ullamcorper sed rhoncus id, volutpat non mi. Sed eget tellus at augue placerat eleifend. Pellentesque ac cursus eros. Cras euismod est sit amet eros auctor cursus. Vestibulum vel turpis ac enim mattis aliquam ac vel nisi. Vivamus vel orci varius, scelerisque magna ut, accumsan arcu. Donec in purus massa. Duis vel turpis congue, eleifend enim vitae, ultrices odio. Nulla malesuada sapien porta massa ullamcorper, at pulvinar lacus commodo. Curabitur mollis feugiat lectus. Pellentesque sapien metus, ornare eu venenatis feugiat, sodales tincidunt enim. Duis maximus orci vel lacus dapibus dictum. Aenean quis dignissim libero. In in leo vitae orci iaculis convallis ac sit amet metus.
"""




module.exports = (robot) ->

  # http://www.michikono.com/2015/07/10/in-depth-tutorial-on-writing-a-slackbot/
  get_username = (res) ->
    "#{res.message.user.name}"

  robot.hear /code\s+of\s+conduct/i, (res) ->
    # send private message to user
    robot.messageRoom get_username(res), codeOfConduct
