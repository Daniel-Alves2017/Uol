Dado(/^que esteja no site especifico$/) do
  visit 'https://www.google.com.br'
end

Quando(/^buscar um site especifico$/) do
fill_in('q', :with => 'uol')
click_link('UOL - O melhor conteúdo')
end

Quando(/^confirmar se esta no site e clicar no link economia$/) do
has_xpath?(".//*[@id='topo']/div[1]/div/div[3]/div[2]/a")
click_link('Economia')
  end

Então(/^validar o valor do dollar está abaixo (\d+),(\d+)$/) do |arg1, arg2|
 valor_a_comparar = arg1 + "." + arg2  
 valor_pagina = page.find(:xpath,".//*[@id='cambio']/ul/li[1]/p[2]")
 valor_dolar = valor_pagina.text.split(/ /).last
 valor_dolar = valor_dolar.gsub(",", ".")
unless valor_dolar.to_f <= valor_a_comparar.to_f        
fail "Dolar acima de " + valor_a_comparar  
end
end

 