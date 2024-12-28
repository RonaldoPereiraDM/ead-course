DELETE FROM tb_lessons;
DELETE FROM tb_modules;
DELETE FROM tb_courses;

-----------------------------------------------------------  CURSOS  -----------------------------------------------------------

--1
INSERT INTO public.tb_courses
(course_id, course_level, course_status, creation_date, description, image_url, last_update_date, name, user_instructor)
VALUES
('abcdef12-3456-7890-abcd-ef1234567890', 'ADVANCED', 'IN_PROGRESS',
'2024-08-20 16:30:00.0000', 'Desenvolvimento Full Stack com React e Spring Boot',
null, '2024-08-20 16:30:00.0000',
'Full Stack Development', 'e4258f17-4259-4df6-810a-967025175fd8');

--2
INSERT INTO public.tb_courses
(course_id, course_level, course_status, creation_date, description, image_url, last_update_date, name, user_instructor)
VALUES
('11111111-1111-4a47-b1fb-2a53f938d7f3', 'INTERMEDIARY', 'CONCLUDED',
'2024-09-10 09:00:00.0000', 'Curso completo de Quality Assurance com foco em testes automatizados, incluindo Selenium, Cypress e JUnit',
'https://example.com/qa-course.jpg', '2024-09-10 09:00:00.0000',
'Quality Assurance Master Course', 'e4258f17-4259-4df6-810a-967025175fd8');

--3
INSERT INTO public.tb_courses
(course_id, course_level, course_status, creation_date, description, image_url, last_update_date, name, user_instructor)
VALUES
('22222222-2222-4a47-b1fb-2a53f938d7f3', 'ADVANCED', 'IN_PROGRESS',
'2024-10-05 10:15:00.0000', 'DevOps Engineering: Docker, Kubernetes, Jenkins, AWS e práticas de CI/CD',
'https://example.com/devops-course.jpg', '2024-10-05 10:15:00.0000',
'DevOps Engineering Professional', 'e4258f17-4259-4df6-810a-967025175fd8');

--4
INSERT INTO public.tb_courses
(course_id, course_level, course_status, creation_date, description, image_url, last_update_date, name, user_instructor)
VALUES
('33333333-3333-4a47-b1fb-2a53f938d7f3', 'BEGINNER', 'CONCLUDED',
'2024-11-12 11:30:00.0000', 'Product Owner: Gestão ágil de produtos, Scrum, métricas e priorização de backlog',
null, '2024-11-12 11:30:00.0000',
'Product Owner Fundamentals', 'e4258f17-4259-4df6-810a-967025175fd8');

--5
INSERT INTO public.tb_courses
(course_id, course_level, course_status, creation_date, description, image_url, last_update_date, name, user_instructor)
VALUES
('44444444-4444-4a47-b1fb-2a53f938d7f3', 'INTERMEDIARY', 'IN_PROGRESS',
'2024-12-08 13:45:00.0000', 'GitHub: Controle de versão, colaboração em equipe, GitHub Actions e boas práticas de Git',
'https://example.com/github-course.jpg', '2024-12-08 13:45:00.0000',
'GitHub Essential Training', 'e4258f17-4259-4df6-810a-967025175fd8');

--6
INSERT INTO public.tb_courses
(course_id, course_level, course_status, creation_date, description, image_url, last_update_date, name, user_instructor)
VALUES
('98765432-9876-4321-abcd-123456789abc', 'BEGINNER', 'CONCLUDED',
'2024-07-15 15:00:00.0000', 'Curso Avançado de Node.js com Express e TypeScript',
'https://example.com/nodejs-course.jpg', '2024-07-15 15:00:00.0000',
'Node.js Advanced Development', 'e4258f17-4259-4df6-810a-967025175fd8');