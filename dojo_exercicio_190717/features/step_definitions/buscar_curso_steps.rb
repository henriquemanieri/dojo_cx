Dado(/^que acesse o site$/) do
    visit 'http://www.iterasys.com.br/'
end

Quando(/^encontrar curso de Formacao de teste de software$/) do
  click_link('Cursos')
  courseName = find(:css, '#post-8515 .course-item .thim-course-content .course-title')
  courseName.text.should eq('Formação em Teste de Software [On Demand]')
end

Quando(/^encontrar curso mais barato que (\d+)$/) do |highPrice|
	coursePrice = find(:css, "#post-8515 .course-item .course-meta .course-price .value[itemprop='price']")
  expect(coursePrice.text.gsub('R$', '').gsub('.', '').to_i).to be < highPrice.to_i
end

Entao(/^validar se o professor e o Jose Correia$/) do
  courseAuthor = find(:xpath, '//*[@id="post-8515"]/div/div[2]/div[1]/div/div/a')
  courseAuthor.text.should eq('José Correia')
end
