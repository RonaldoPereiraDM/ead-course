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


-----------------------------------------------------------  MÓDULOS  -----------------------------------------------------------

----------------------------------------  Módulos para o curso 'Full Stack Development'  ----------------------------------------

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('bdef20b3-f529-438f-8f69-c6e515fd540c', '2024-08-20 16:30:00.0000',
'Módulo 1 - Ambiente',
'Preparando o ambiente de desenvolvimento', 'abcdef12-3456-7890-abcd-ef1234567890');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('cdef30b4-f639-438f-8f69-c6e515fd541d', '2024-08-21 16:30:00.0000',
'Módulo 2 - Front-end',
'Desenvolvimento Front-end com React e TypeScript', 'abcdef12-3456-7890-abcd-ef1234567890');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('edef40b5-f749-438f-8f69-c6e515fd542e', '2024-08-22 16:30:00.0000',
'Módulo 3 - Back-end',
'Desenvolvimento Back-end com Spring Boot', 'abcdef12-3456-7890-abcd-ef1234567890');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('fdef50b6-f859-438f-8f69-c6e515fd543f', '2024-08-23 16:30:00.0000',
'Módulo 4 - Integração',
'Integrando Front-end com Back-end e Deploy', 'abcdef12-3456-7890-abcd-ef1234567890');


----------------------------------------  Módulos para o curso 'Quality Assurance Master Course'  ----------------------------------------

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('aaaa1111-f529-438f-8f69-c6e515fd540c', '2024-09-10 09:00:00.0000',
'Módulo 1 - Fundamentos QA',
'Introdução ao Quality Assurance e Tipos de Testes', '11111111-1111-4a47-b1fb-2a53f938d7f3');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('aaaa2222-f639-438f-8f69-c6e515fd541d', '2024-09-11 09:00:00.0000',
'Módulo 2 - Selenium WebDriver',
'Automação de Testes com Selenium WebDriver', '11111111-1111-4a47-b1fb-2a53f938d7f3');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('aaaa3333-f749-438f-8f69-c6e515fd542e', '2024-09-12 09:00:00.0000',
'Módulo 3 - Cypress',
'Testes End-to-End com Cypress', '11111111-1111-4a47-b1fb-2a53f938d7f3');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('aaaa4444-f859-438f-8f69-c6e515fd543f', '2024-09-13 09:00:00.0000',
'Módulo 4 - JUnit e Testes Unitários',
'Testes Unitários com JUnit e Práticas Avançadas', '11111111-1111-4a47-b1fb-2a53f938d7f3');

----------------------------------------  Módulos para o curso 'DevOps Engineering Professional'  ----------------------------------------

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('d71f8c8a-b8c7-4e86-a8df-c8c3f9c3d1a1', '2024-10-05 10:15:00',
'Fundamentos de DevOps: Conceitos essenciais, cultura DevOps, principais práticas e metodologias ágeis',
'Fundamentos de DevOps', '22222222-2222-4a47-b1fb-2a53f938d7f3');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('e82a9d9b-c9d8-4f97-b9e0-d9d4e0e4e2b2', '2024-10-05 10:15:00',
'Infraestrutura como Código: Terraform, Ansible, CloudFormation e melhores práticas de IaC',
'Infraestrutura como Código', '22222222-2222-4a47-b1fb-2a53f938d7f3');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('f93b0e0c-dae9-5fa8-ca01-eae5f1f5f3c3', '2024-10-05 10:15:00',
'Containers e Orquestração: Docker, Kubernetes, microserviços e estratégias de deploy',
'Containers e Orquestração', '22222222-2222-4a47-b1fb-2a53f938d7f3');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('304531b2-8b52-4f4e-9a99-dc700e0b0bfb', '2024-10-05 10:15:00',
'CI/CD e Automação: Jenkins, GitLab CI, GitHub Actions e pipelines de entrega contínua',
'CI/CD e Automação', '22222222-2222-4a47-b1fb-2a53f938d7f3');

----------------------------------------  Módulos para o curso 'Product Owner Fundamentals'  ---------------------------------------------

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('4915faa0-6116-433c-8e33-691111e748b2', '2024-11-12 11:30:00',
'Introdução ao papel do Product Owner: Responsabilidades, competências necessárias e interação com stakeholders',
'Fundamentos do Product Owner', '33333333-3333-4a47-b1fb-2a53f938d7f3');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('86645762-3bc5-4885-8147-b271f3978f1e', '2024-11-12 11:30:00',
'Gestão do Product Backlog: Criação, refinamento, priorização e técnicas de escrita de histórias de usuário',
'Gestão do Product Backlog', '33333333-3333-4a47-b1fb-2a53f938d7f3');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('b5428ba1-f94c-49f9-b86a-b3bff53a55df', '2024-11-12 11:30:00',
'Métodos Ágeis e Scrum: Framework Scrum, eventos, artefatos e papéis na perspectiva do Product Owner',
'Scrum para Product Owners', '33333333-3333-4a47-b1fb-2a53f938d7f3');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('fd02128b-04ab-4799-9d42-2ea7c17de28a', '2024-11-12 11:30:00',
'Métricas e Valor de Negócio: KPIs, OKRs, análise de valor agregado e tomada de decisão baseada em dados',
'Métricas e Valor de Negócio', '33333333-3333-4a47-b1fb-2a53f938d7f3');


----------------------------------------  Módulos para o curso 'GitHub Essential Training'  ----------------------------------------------

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('c1b695e8-2ab5-4c88-8ce3-fbe40e06d901', '2024-12-08 13:45:00',
'Introdução ao GitHub: Conceitos básicos de controle de versão, repositórios, interface web e GitHub Desktop',
'Fundamentos do GitHub', '44444444-4444-4a47-b1fb-2a53f938d7f3');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('d96f26b5-fd8a-4481-9362-01538f184991', '2024-12-08 13:45:00',
'Branches e Pull Requests: Gestão de branches, estratégias de branching, criação e revisão de pull requests',
'Branches e Pull Requests', '44444444-4444-4a47-b1fb-2a53f938d7f3');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('ccee7c53-525e-4ea0-a6af-bc2513179d44', '2024-12-08 13:45:00',
'Colaboração no GitHub: Issues, Projects, Wikis, discussões e boas práticas de colaboração em equipe',
'Colaboração e Ferramentas Sociais', '44444444-4444-4a47-b1fb-2a53f938d7f3');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('a7c37ec6-7d3a-404b-970b-8f83878bbbe3', '2024-12-08 13:45:00',
'GitHub Actions e Automação: Configuração de workflows, CI/CD, automação de tarefas e GitHub Pages',
'GitHub Actions e Automação', '44444444-4444-4a47-b1fb-2a53f938d7f3');

----------------------------------------  Módulos para o curso 'Node.js Advanced Development'  -------------------------------------------

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('db52626b-3db6-4ae4-a802-e2ac0ec8c9f0', '2024-07-15 15:00:00',
'Arquitetura Avançada em Node.js: Design patterns, clean architecture, SOLID principles e melhores práticas de estruturação',
'Arquitetura Avançada', '98765432-9876-4321-abcd-123456789abc');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('b74cbb65-256a-4db0-a640-6a432227bab7', '2024-07-15 15:00:00',
'Performance e Escalabilidade: Clustering, load balancing, caching, otimização de queries e monitoramento de aplicações',
'Performance e Escalabilidade', '98765432-9876-4321-abcd-123456789abc');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('ea320b5c-a908-47b2-97e5-b3a42b5ba3d7', '2024-07-15 15:00:00',
'Segurança Avançada: Autenticação JWT, OAuth2, proteção contra ataques comuns, criptografia e boas práticas de segurança',
'Segurança Avançada', '98765432-9876-4321-abcd-123456789abc');

INSERT INTO tb_modules (module_id, creation_date, description, title, course_course_id)
VALUES ('8e03f1bb-9d18-410e-b283-5b643fbec5bd', '2024-07-15 15:00:00',
'Microsserviços com Node.js: Arquitetura distribuída, comunicação entre serviços, event-driven development e containers',
'Microsserviços e Arquitetura Distribuída', '98765432-9876-4321-abcd-123456789abc');