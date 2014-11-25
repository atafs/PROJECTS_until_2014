/* 1.versao1 Listar o nome de todos os clientes por ordem alfabética decrescente. */
SELECT nome_cliente 
FROM Cliente
ORDER BY nome_cliente DESC

/* 1.versao2 Listar o nome de todos os clientes por ordem alfabética decrescente. */
SELECT nome_cliente AS "NOME DOS CLIENTES"
FROM Cliente
ORDER BY nome_cliente DESC

/* ******************************************************************************** */

/* 2.versao1 Listar a designação dos hotéis cuja sigla contenha um ‘M’ */
SELECT sigla_hotel
FROM Hotel
WHERE sigla_hotel LIKE '%M%'

/* 2.versao2 Listar a designação dos hotéis cuja sigla contenha um ‘M’ */
SELECT sigla_hotel AS "SIGLAS DO HOTEL", designacao AS "DESIGNCACAO DO HOTEL"
FROM Hotel
WHERE sigla_hotel LIKE '%M%'

ORDER BY designacao ASC

/* ******************************************************************************** */

/* 3.versao1 Quais os nomes dos clientes individuais que não têm BI */
SELECT c.nome_cliente
FROM Cliente c, Individual i
WHERE   c.numero_cliente = i.numero_cliente
AND     i.bi IS NULL

/* 3.versao2 Quais os nomes dos clientes individuais que não têm BI */
SELECT c.nome_cliente AS "CLIENTE: NOME", i.numero_cliente AS "CLIENTE: NUMERO", i.bi AS "CLIENTE: BI"
FROM Cliente c, Individual i

//join (evitar produto cartesiano)
WHERE   c.numero_cliente = i.numero_cliente
AND     i.bi IS NULL

ORDER BY c.nome_cliente

/* ******************************************************************************** */

/* 4.versao1 Listar os quartos do hotel cuja sigla RM */
SELECT sigla_hotel
FROM Quarto
WHERE sigla_hotel LIKE 'RM'

/* 4.versao2 Listar os quartos do hotel cuja sigla RM */
SELECT DISTINCT h.designacao AS "HOTEL: nome", q.sigla_hotel AS "HOTEL: sigla"
FROM Quarto q, Hotel h
//join
WHERE q.sigla_hotel = h.sigla_hotel
AND q.sigla_hotel LIKE 'RM'

/* ******************************************************************************** */

/* 5.versao1 Listar o nome de todos os clientes individuais. */
SELECT c.nome_cliente
FROM Cliente c, Individual i
WHERE c.numero_cliente = i.numero_cliente

/* 5.versao2 Listar o nome de todos os clientes individuais. */
SELECT c.nome_cliente AS "CLIENTE: individual"
FROM Cliente c, Individual i
//JOIN
WHERE c.numero_cliente = i.numero_cliente
ORDER BY c.nome_cliente ASC

/* ******************************************************************************** */

/* 6.versao1 Na listagem anterior exibir também o número do cliente */
SELECT c.nome_cliente AS "CLIENTE: individual", c.numero_cliente AS "CLIENTE: numero"
FROM Cliente c, Individual i
//JOIN
WHERE c.numero_cliente = i.numero_cliente
ORDER BY c.numero_cliente ASC

/* ******************************************************************************** */

/* 7.versao1 Listar o nome de todos os clientes organizações que trabalham no ramo Alimentar (CAE iniciada por 10….) */
SELECT c.nome_cliente
FROM Cliente c, Organizacao o
//JOIN
WHERE c.numero_cliente = o.numero_cliente
//assumir que ramo alimentar comeca por 10(...)
AND ramo_actividade LIKE '10%'

/* 7.versao2 Listar o nome de todos os clientes organizações que trabalham no ramo Alimentar (CAE iniciada por 10….) */
SELECT c.nome_cliente AS "CLIENTE: nome", o.ramo_actividade AS "ORGANIZACAO: ramo"
FROM Cliente c, Organizacao o
//JOIN
WHERE c.numero_cliente = o.numero_cliente
//assumir que ramo alimentar comeca por 10(...)
AND ramo_actividade LIKE '10%'
ORDER BY o.ramo_actividade ASC

/* ******************************************************************************** */

/* 8.versao1 Indique quais os quartos reservados pela NASA? E pela Ana? Todos os da NASA e da
Ana? (Avalie o que representa cada registo da tabela obtida a partir do SELECT – SELECT *) */
SELECT c.nome_cliente, qr.numero_quarto
FROM Quarto q, Reserva_Quarto qr, Cliente c, Reservado r
WHERE q.numero_quarto = qr.numero_quarto
AND c.numero_cliente = r.numero_cliente
'ERRADO: minha resolucao (confusa)'

/* 8.versao2 Indique quais os quartos reservados pela NASA? E pela Ana? Todos os da NASA e da
Ana? (Avalie o que representa cada registo da tabela obtida a partir do SELECT – SELECT *) */
SELECT rq.numero_quarto, o.nome_cliente, i.nome_cliente
FROM Reserva_Quarto rq, Individual i, Organizacao o, Reservado r

//JOIN
WHERE r.numero_reserva = rq.numero_reserva
AND r.numero_cliente = i.numero_cliente 
AND r.numero_cliente = o.numero_cliente
//RESTRICOES DE PESQUISA
AND o.nome_cliente = 'NASA'
AND i.nome_cliente = 'ANA'
'ERRADO: minha resolucao (MENOS confusa)'

/* 8.versao3 Indique quais os quartos reservados pela NASA? E pela Ana? Todos os da NASA e da
Ana? (Avalie o que representa cada registo da tabela obtida a partir do SELECT – SELECT *) */
SELECT rq.numero_quarto, o.nome_cliente, i.nome_cliente
FROM Reserva_Quarto rq, Individual i, Organizacao o, Reservado r

//JOIN
WHERE r.numero_reserva = rq.numero_reserva
AND r.numero_cliente = i.numero_cliente 
AND r.numero_cliente = o.numero_cliente
//RESTRICOES DE PESQUISA
AND o.nome_cliente = 'NASA'
AND i.nome_cliente = 'ANA'

'TENHO NA MINHA PASTA A RESOLUCAO'

/* 9.versao1 Quantas camas existem em cada quarto reservado pelo Pedro? */


/* ******************************************************************************** */



/* 10.versao1 Liste os nomes dos hotéis onde o cliente ISCTE já efetuou reservas. */


/* ******************************************************************************** */

    
 

/* 
RECAPITULAR:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

SELECT:     (???)QUAIS OS CAMPOS QUE QUERO IMPRIMIR NO ECRÃ...
FROM:       (???)QUAIS AS TABELAS DAS QUAIS QUERO PESQUISAR...

ORDER BY:   (???)QUAL A ORDEM PELA QUAL QUERO QUE TABELA SEJA IMPRESSA NO ECRÃ
            SYNTAXE:    ORDER BY titulo_coluna DESC

(...) LIKE '%X%'    (???) POSSO USAR ASPAS EM VEZ DE PELICAS
                    resposta: NAO!! DÁ ERRO. TEM DE SER PELICAS!!!

(...) AND i.bi IS NULL  (???) COMO USAR O NULL:
                        a - (...) AND i.bi = NULL
                        b - (...) AND i.bi IS NULL
                        resposta:  (a); NÃO é uma atribuicao como em Java

DISTINCT:   (???) COMO EVITAR A REPETICAO DA IMPRESSAO DE DADOS NO ECRÃ...
            resposta: (...) SELECT DISTINCT h.designacao AS "HOTEL: nome", q.sigla_hotel AS "HOTEL: sigla" (...)
            SYNTAXE: SELECT DISTINCT (...)

ASC:        (???) ASCENDENTE IMPRIME DO MAIS PEQUENO PARA O MAIOR OU DO MAIOR PARA O MAIS PEQUENO...
            resposta: ASC = mais peq. para o maior;






::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
*/