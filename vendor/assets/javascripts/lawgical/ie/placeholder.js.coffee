# Released under MIT license: http://www.opensource.org/licenses/mit-license.php
# Source:  https://gist.github.com/379601
# but converted to coffeescript
$ ->
  $('[placeholder]').focus(->
    input = $(this)
    if (input.val() == input.attr('placeholder'))
      input.val('')
      input.removeClass('placeholder')
  ).blur(->
    input = $(this)
    if (input.val() == '' || input.val() == input.attr('placeholder'))
      input.addClass('placeholder')
      input.val(input.attr('placeholder'))
  ).blur().parents('form').submit(->
    $(this).find('[placeholder]').each(->
      input = $(this)
      if (input.val() == input.attr('placeholder'))
        input.val('')
    )
  )
