Dado(/^que acesse o site$/) do
    visit 'http://www.iterasys.com.br/'
end

Quando(/^encontrar curso de Formacao de teste de software$/) do
  @course_page = IterasysCoursesPage.new
  @course_page.load
  @course_page.course_name.text.should.eq('Formação em Teste de Software [On Demand]')
end

Quando(/^encontrar curso mais barato que (\d+)$/) do |high_price|
	 expect(@course_page.course_price.text.gsub('R$', '').gsub('.', '').to_i).to be < high_price.to_i
end

Entao(/^validar se o professor e o Jose Correia$/) do
  @course_page.course_author.text.should eq('José Correia')
end
