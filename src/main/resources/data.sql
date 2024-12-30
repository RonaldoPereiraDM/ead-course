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

-----------------------------------  Lições para o módulo 1 do curso Full Stack Development ---------------------------------------------
-----------------------------------  Módulo 1: Preparando o ambiente de desenvolvimento  ------------------------------------------------

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url , module_module_id
)
VALUES (
'32dca517-812f-4c9e-9b86-569db6585f8e', '2024-12-29 03:29:00.777295', 'Vamos instalar a versão do java necessária para o curso',
'1. Instalação do Java 21', 'www.exemplourl.com/video1', 'bdef20b3-f529-438f-8f69-c6e515fd540c'
);

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url, module_module_id
)
VALUES (
'4d32c6d8-614e-4ab9-bbf8-8ab6b306df4a', '2024-12-29 03:29:00.777295', 'Aprenda a configurar as variáveis de ambiente do Java no seu sistema operacional',
'2. Configurando Variáveis de Ambiente', 'www.exemplourl.com/video2', 'bdef20b3-f529-438f-8f69-c6e515fd540c'
);

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url, module_module_id
)
VALUES (
'9128685d-cae5-4361-9ec1-ee6888a60bd9', '2024-12-29 03:29:00.777295', 'Instale e configure a IDE IntelliJ IDEA para desenvolvimento Java',
'3. Instalação da IDE IntelliJ', 'www.exemplourl.com/video3', 'bdef20b3-f529-438f-8f69-c6e515fd540c'
);

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url, module_module_id
)
VALUES (
'89fdc84a-b45f-4f9c-c19a-8a3fe9818d3f', '2024-12-29 03:29:00.777295', 'Configure o Git no seu computador e aprenda os comandos básicos',
'4. Configuração do Git', 'www.exemplourl.com/video4', 'bdef20b3-f529-438f-8f69-c6e515fd540c'
);

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url, module_module_id
)
VALUES (
'ef385d4a-d8e3-4edc-9bbb-4f922525280f', '2024-12-29 03:29:00.777295', 'Aprenda a criar e configurar um projeto Maven do zero',
'5. Criando Projeto Maven', 'www.exemplourl.com/video5', 'bdef20b3-f529-438f-8f69-c6e515fd540c'
);

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url, module_module_id
)
VALUES (
'63d99e1e-11c9-4aa7-bedb-f0f2af9ad122', '2024-12-29 03:29:00.777295', 'Aprenda a instalar e configurar o PostgreSQL, incluindo a criação do usuário e banco de dados inicial',
'6. Instalação e Configuração do PostgreSQL', 'www.exemplourl.com/video6', 'bdef20b3-f529-438f-8f69-c6e515fd540c'
);

-----------------------------------  Lições para o módulo 2 do curso Full Stack Development ---------------------------------------------
-----------------------------------  Módulo 2: Desenvolvimento Front-end com React e TypeScript  ----------------------------------------

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url, module_module_id
)
VALUES (
'123e4567-e89b-12d3-a456-426614174000', '2024-08-21 16:30:00', 'Aprenda os conceitos fundamentais do TypeScript e sua importância no desenvolvimento front-end',
'1. Introdução ao TypeScript', 'www.exemplourl.com/video1', 'cdef30b4-f639-438f-8f69-c6e515fd541d'
);

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url, module_module_id
)
VALUES (
'223e4567-e89b-12d3-a456-426614174001', '2024-08-22 16:30:00', 'Explore os tipos básicos e avançados do TypeScript para desenvolvimento mais seguro',
'2. Sistema de Tipos no TypeScript', 'www.exemplourl.com/video2', 'cdef30b4-f639-438f-8f69-c6e515fd541d'
);

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url, module_module_id
)
VALUES (
'323e4567-e89b-12d3-a456-426614174002', '2024-08-23 16:30:00', 'Compreenda os fundamentos do React e sua arquitetura baseada em componentes',
'3. Fundamentos do React', 'www.exemplourl.com/video3', 'cdef30b4-f639-438f-8f69-c6e515fd541d'
);

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url, module_module_id
)
VALUES (
'423e4567-e89b-12d3-a456-426614174003', '2024-08-24 16:30:00', 'Aprenda a criar e gerenciar estados em componentes React usando Hooks',
'4. Estados e Hooks no React', 'www.exemplourl.com/video4', 'cdef30b4-f639-438f-8f69-c6e515fd541d'
);

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url, module_module_id
)
VALUES (
'523e4567-e89b-12d3-a456-426614174004', '2024-08-25 16:30:00', 'Entenda como implementar navegação entre páginas usando React Router',
'5. Roteamento com React Router', 'www.exemplourl.com/video5', 'cdef30b4-f639-438f-8f69-c6e515fd541d'
);

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url, module_module_id
)
VALUES (
'623e4567-e89b-12d3-a456-426614174005', '2024-08-26 16:30:00', 'Aprenda a gerenciar formulários em React com validações e tratamento de erros',
'6. Formulários no React', 'www.exemplourl.com/video6', 'cdef30b4-f639-438f-8f69-c6e515fd541d'
);

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url, module_module_id
)
VALUES (
'723e4567-e89b-12d3-a456-426614174006', '2024-08-27 16:30:00', 'Explore técnicas de estilização em React usando CSS Modules e Styled Components',
'7. Estilização em React', 'www.exemplourl.com/video7', 'cdef30b4-f639-438f-8f69-c6e515fd541d'
);

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url, module_module_id
)
VALUES (
'823e4567-e89b-12d3-a456-426614174007', '2024-08-28 16:30:00', 'Aprenda a fazer chamadas API e gerenciar estados assíncronos em aplicações React',
'8. Integração com APIs', 'www.exemplourl.com/video8', 'cdef30b4-f639-438f-8f69-c6e515fd541d'
);

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url, module_module_id
)
VALUES (
'923e4567-e89b-12d3-a456-426614174008', '2024-08-29 16:30:00', 'Implemente autenticação e autorização em sua aplicação React',
'9. Autenticação e Autorização', 'www.exemplourl.com/video9', 'cdef30b4-f639-438f-8f69-c6e515fd541d'
);

INSERT INTO tb_lessons (
lesson_id, creation_date, description,
title, video_url, module_module_id
)
VALUES (
'a23e4567-e89b-12d3-a456-426614174009', '2024-08-30 16:30:00', 'Aprenda as melhores práticas de otimização e performance em aplicações React',
'10. Otimização e Performance', 'www.exemplourl.com/video10', 'cdef30b4-f639-438f-8f69-c6e515fd541d'
);

-----------------------------------  Lições para o módulo 3 do curso Full Stack Development ---------------------------------------------
-----------------------------------  Módulo 3: Back End  --------------------------------------------------------------------------------

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id)
VALUES ('f47ac10b-58cc-4372-a567-0e02b2c3d479', '2024-08-22 16:30:00', 'Introdução aos conceitos fundamentais do Spring Boot e configuração do ambiente de desenvolvimento', '1. Fundamentos do Spring Boot', 'www.exemplourl.com/video1', 'edef40b5-f749-438f-8f69-c6e515fd542e');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id)
VALUES ('550e8400-e29b-41d4-a716-446655440000', '2024-08-22 16:30:00', 'Aprenda a criar APIs RESTful utilizando Spring Boot e implemente os principais métodos HTTP', '2. Desenvolvimento de APIs REST', 'www.exemplourl.com/video2', 'edef40b5-f749-438f-8f69-c6e515fd542e');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id)
VALUES ('6ba7b810-9dad-11d1-80b4-00c04fd430c8', '2024-08-22 16:30:00', 'Implementação de persistência de dados com Spring Data JPA e PostgreSQL', '3. Spring Data JPA', 'www.exemplourl.com/video3', 'edef40b5-f749-438f-8f69-c6e515fd542e');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id)
VALUES ('7c9e6679-7425-40de-944b-e07fc1f90ae7', '2024-08-22 16:30:00', 'Técnicas de validação de dados e tratamento de exceções em aplicações Spring Boot', '4. Validação e Tratamento de Erros', 'www.exemplourl.com/video4', 'edef40b5-f749-438f-8f69-c6e515fd542e');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id)
VALUES ('8c9e6679-7425-40de-944b-e07fc1f90ae8', '2024-08-22 16:30:00', 'Implementação de autenticação e autorização usando Spring Security', '5. Spring Security', 'www.exemplourl.com/video5', 'edef40b5-f749-438f-8f69-c6e515fd542e');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id)
VALUES ('9c9e6679-7425-40de-944b-e07fc1f90ae9', '2024-08-22 16:30:00', 'Testes unitários e de integração em aplicações Spring Boot', '6. Testes com Spring Boot', 'www.exemplourl.com/video6', 'edef40b5-f749-438f-8f69-c6e515fd542e');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id)
VALUES ('ac9e6679-7425-40de-944b-e07fc1f90ae0', '2024-08-22 16:30:00', 'Documentação de APIs com Swagger e OpenAPI', '7. Documentação de APIs', 'www.exemplourl.com/video7', 'edef40b5-f749-438f-8f69-c6e515fd542e');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id)
VALUES ('bc9e6679-7425-40de-944b-e07fc1f90ae1', '2024-08-22 16:30:00', 'Deploy e monitoramento de aplicações Spring Boot em ambiente de produção', '8. Deploy e Monitoramento', 'www.exemplourl.com/video8', 'edef40b5-f749-438f-8f69-c6e515fd542e');


-----------------------------------  Lições para o módulo 4 do curso Full Stack Development ---------------------------------------------
-----------------------------------  Módulo 4: Integração  ------------------------------------------------------------------------------

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id) VALUES
('3bc75e4d-9182-45f4-80eb-de55c4846a1c', '2024-08-23 16:30:00', 'Compreenda a arquitetura cliente-servidor e os fundamentos da integração entre front-end e back-end', '1. Fundamentos da Integração Front-end e Back-end', 'www.exemplourl.com/video1', 'fdef50b6-f859-438f-8f69-c6e515fd543f');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id) VALUES
('b7c31e8d-f234-4c2e-9f42-2d6e7214116b', '2024-08-23 16:30:00', 'Aprenda a realizar requisições HTTP utilizando Fetch API e Axios para comunicação com o backend', '2. Requisições HTTP e APIs REST', 'www.exemplourl.com/video2', 'fdef50b6-f859-438f-8f69-c6e515fd543f');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id) VALUES
('00318e40-08c2-464f-bf47-80e5b6a90c97', '2024-08-23 16:30:00', 'Implemente autenticação e autorização em sua aplicação usando tokens JWT', '3. Autenticação e Autorização', 'www.exemplourl.com/video3', 'fdef50b6-f859-438f-8f69-c6e515fd543f');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id) VALUES
('0e94bac7-b60c-4832-b067-ee79f39e3812', '2024-08-23 16:30:00', 'Gerencie o estado global da aplicação com Context API e integração com backend', '4. Gerenciamento de Estado e Integração', 'www.exemplourl.com/video4', 'fdef50b6-f859-438f-8f69-c6e515fd543f');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id) VALUES
('cd8eff77-c626-441a-9e83-375880c6f152', '2024-08-23 16:30:00', 'Aprenda a tratar erros e implementar feedback visual para requisições ao backend', '5. Tratamento de Erros e Feedback', 'www.exemplourl.com/video5', 'fdef50b6-f859-438f-8f69-c6e515fd543f');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id) VALUES
('7d4fd58d-d192-4919-bf13-84138f06739e', '2024-08-23 16:30:00', 'Configure ambientes de desenvolvimento, homologação e produção', '6. Ambientes de Deploy', 'www.exemplourl.com/video6', 'fdef50b6-f859-438f-8f69-c6e515fd543f');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id) VALUES
('ba0abcd6-906c-4092-b91d-a4b7ba08eee8', '2024-08-23 16:30:00', 'Implemente cache e otimizações de performance na integração front-end e back-end', '7. Cache e Otimização', 'www.exemplourl.com/video7', 'fdef50b6-f859-438f-8f69-c6e515fd543f');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id) VALUES
('55e94c32-6252-4df9-895a-d85876199bfd', '2024-08-23 16:30:00', 'Configure e realize o deploy de aplicações React em serviços de hospedagem', '8. Deploy de Aplicações React', 'www.exemplourl.com/video8', 'fdef50b6-f859-438f-8f69-c6e515fd543f');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id) VALUES
('22809cf0-3dda-4fe7-83fb-e267ee6c7724', '2024-08-23 16:30:00', 'Aprenda a configurar e utilizar variáveis de ambiente em diferentes ambientes', '9. Variáveis de Ambiente', 'www.exemplourl.com/video9', 'fdef50b6-f859-438f-8f69-c6e515fd543f');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id) VALUES
('c3a1957a-8d9d-4771-8af2-8bc9e5a70a3b', '2024-08-23 16:30:00', 'Implemente monitoramento e logging para acompanhar o desempenho da aplicação', '10. Monitoramento e Logging', 'www.exemplourl.com/video10', 'fdef50b6-f859-438f-8f69-c6e515fd543f');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id) VALUES
('e84a676e-53ab-4f54-8d57-ca93725fdeb7', '2024-08-23 16:30:00', 'Configure e implemente CI/CD para automatizar o processo de deploy', '11. CI/CD e Automação', 'www.exemplourl.com/video11', 'fdef50b6-f859-438f-8f69-c6e515fd543f');

INSERT INTO tb_lessons (lesson_id, creation_date, description, title, video_url, module_module_id) VALUES
('d52ea7e6-7a1a-491c-80e6-1f7957f16703', '2024-08-23 16:30:00', 'Aprenda as melhores práticas de segurança na integração front-end e back-end', '12. Segurança na Integração', 'www.exemplourl.com/video12', 'fdef50b6-f859-438f-8f69-c6e515fd543f');