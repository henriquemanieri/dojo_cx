class IterasysCoursesPage < SitePrism::Page
set_url 'http://www.iterasys.com.br/Cursos'

element :course_name, '#post-8515 .course-item .thim-course-content .course-title'
element :course_price, "#post-8515 .course-item .course-meta .course-price .value[itemprop='price']"
element :course_author, :xpath, '//*[@id="post-8515"]/div/div[2]/div[1]/div/div/a'
end
