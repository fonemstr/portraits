show_product_image = ->
	str_arr = []
	show_image = ''
	$("[id^='option_types'] :selected").each (i) ->
		str = ($ this).data("image") 
		if str != '' then str_arr.push(str)

	img_str = str_arr.join('_') 

	$("li.tmb-all a").each (i) ->
		if $(this).attr('href').match(img_str) then show_image = $(this).attr('href')

	if show_image != '' then  $('#main-image img').attr 'src', show_image

$ ->
	$("[id^='option_types']").change	->
		show_product_image()
		total = 0
		$("[id^='option_types'] :selected").each (i) ->
			str = $(this).text()
			price = parseFloat(str.match(/\d+\.\d+/g))
			if price then total += price

		$('.price.selling').text('$' + total.toFixed(2))

