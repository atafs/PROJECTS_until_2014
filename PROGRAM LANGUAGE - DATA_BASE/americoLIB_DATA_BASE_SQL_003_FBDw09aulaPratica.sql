/* Exerc�cios FBD SQL � Parte 2 */

/* 1.versao1 Quantos hot�is existem na nossa base de dados? */
SELECT COUNT(*) AS "NUMERO HOTEIS"
FROM Hotel

/* ---------------------------------------------------------------- */

/* 2.versao1 Quantos quartos tem o hotel Majestic (sigla MJ)? E qual o n�mero de camas? */

SELECT Count() AS "NUM QUARTOS: MJ"
FROM Quarto
WHERE sigla_hotel LIKE 'MJ'

'como colocar o numero de camas nesta pesquisa..'

/* ---------------------------------------------------------------- */

/* 3.versao1 Qual a m�dia de pre�os dos quartos do hotel Lisboa? */
SELECT AVG (preco)
FROM Quarto
WHERE sigla_hotel LIKE 'LS'

CERTO

//segundaImplementacao: media dos precos dos quartos
SELECT AVG(preco)
FROM Quarto
WHERE preco IS NOT NULL
GROUP BY preco 

/* ---------------------------------------------------------------- */

/* 4.versao1 Quantos quartos tem cada hotel representado na BD? (nota: hot�is sem quartos n�o
aparecem listados) */

//parteI: Quantos quartos tem UM hotel ESPECIFICO representado na BD
SELECT COUNT(*) AS "NUMERO QUARTOS"
FROM Quarto
WHERE sigla_hotel = 'MJ'
//...falta a subQuery
'ERRADO'

/* 4.versao2 Quantos quartos tem cada hotel representado na BD? */
SELECT sigla_hotel, COUNT(*) AS "NUMERO QUARTOS"
FROM Quarto
GROUP BY sigla_hotel

/* ---------------------------------------------------------------- */

/* 5. � informa��o da consulta anterior acrescente o n�mero de camas e pre�o m�dio. */
SELECT sigla_hotel, COUNT(*) 
FROM Quarto q, Hotel h
WHERE q.sigle_hotel = h.sigla_hotel
GROUP BY sigla_hotel

UNION 

SELECT sigla_hotel NOT IN 
'??? nao percebi como o Count sabe qual a coluna na qual ele quer que eu conte...'

/* ---------------------------------------------------------------- */

/* 6. Para os quartos que t�m reservas registadas, qual o n�mero de reservas que t�m? */
SELECT sigla_hotel, numero_quarto, numero_reserva
FROM Reserva_Quartos
'??? nao percebi a pergunta...'

/* ---------------------------------------------------------------- */

/* 7. Indique a quantidade e a m�dia de n�mero de pessoas por reserva, de cada quarto do
hotel Lisboa (sigla LS) que j� foram reservados? */

/* ---------------------------------------------------------------- */
//FEITOS NA AULA (PELA PROF) ****************************************

// 8. Quais os quartos com mais que uma reserva?
SELECT sigla_hotel, Numero_Quarto, count(*)
FROM Reserva_Quartos
GROUP BY sigla_Hotel, Numero_Quarto
HAVING count(*) > 1 
'(???) como e que o count sabe qual eu quero contar...'

/* ---------------------------------------------------------------- */

/* 9. Qual a organiza��o (nome) cujo n�mero de reservas � superior a 2? (nota: assuma que
nome do cliente organiza��o � uma chave candidata. Que implica��es teria na sua
Query se os clientes pudessem ter nomes iguais?) */

/* ---------------------------------------------------------------- */

/* 10. Qual a m�dia de pessoas por quarto nas reservas de grupo (i.e. com mais que um
quarto por reserva) para os quartos em que n�o foram solicitadas camas extra. */

/* ---------------------------------------------------------------- */

/* 11. Quais os quartos cujo pre�o � superior � m�dia de pre�os do mercado? (nota: evite a mensagem de erro)*/
SELECT sigla_hotel, Numero_Quarto
FROM Quarto
WHERE preco > (//subQuery
    SELECT AVG(preco) 
    FROM Quarto
    WHERE preco IS NOT NULL //elimina uma mensagem de aviso  
    ) 


/* 12. Quais os quartos cujo pre�o � superior � m�dia de pre�os praticados no hotel onde pertence? */

??? erros 

SELECT sigla_hotel, Numero_Quarto (//subQuery
    SELECT AVG(preco) 
    FROM Quarto q2 //querie interior
    WHERE q1.sigla_hotel = q2.sigla_hotel AND IS NOT NULL //elimina uma mensagem de aviso  
    ) 

FROM Quarto q1 //dar nomes �s queries(exterior e interior)
WHERE preco > (//subQuery
    SELECT AVG(preco) 
    FROM Quarto q2 //querie interior
    WHERE q1.sigla_hotel = q2.sigla_hotel AND IS NOT NULL //elimina uma mensagem de aviso  
    ) 

/* 13.versao1 Qual(is) o(s) quarto(s) com mais reservas? */
SELECT sigla_hotel, numero_quarto, count(*) //acrescento mais uma coluna de resposta
FROM reserva_quartos
GROUP BY sigla_hotel, Numero_Quarto
HAVING Count() >= ALL (
    SELECT Count()
    FROM Reserva_Quartos    
    GROUP BY sigla_hotel, Numero_Quarto
    )


/* 13.versao2 Qual(is) o(s) quarto(s) com mais reservas? */
SELECT sigla_hotel, numero_quarto, count(*) //acrescento mais uma coluna de resposta
FROM reserva_quartos
GROUP BY sigla_hotel, Numero_Quarto
HAVING Count() =    (SELECT MAX(TotalR)
                    FROM (SELECT count() AS TotalR)
                        FROM Reserva_Quartos        
                        GROUP BY sigla_hotel, numero_quarto) TR)
    FROM Reserva_Quartos    
    GROUP BY sigla_hotel, Numero_Quarto
    )

/* ---------------------------------------------------------------- */

/* 14. Qual o quarto com mais reservas em cada hotel? Ordene os resultados por ordem
alfab�tica de sigla do hotel e ordem num�rica crescente do n�mero do quarto. */


/* ---------------------------------------------------------------- */

/* 15. Refa�a a quest�o 4 para que contemple os hot�is que n�o t�m quartos. Neste caso
dever�o ser apresentados como tendo 0 (zero) quartos. */
SELECT quarto.sigla_hotel, count()
FROM Quarto, Hotel
    //evitar o produto cartesiano; fazer o join
    WHERE quarto.sigla_hotel = hotel.sigla_hotel
    //sempre depois do WHERE
    GROUP BY quarto.Sigla_Hotel
    //usar o UNION
    UNION

    SELECT hotel.Sigla_Hotel, 0
    FROM Hotel
    WHERE sigla_hotel NOT IN (
        SELECT sigla_hotel FROM quarto //subQuery: seleciona a sigla dos hoteis que nao t�m quartos
        ) 
    //ordenar no final
    ORDER BY Sigla_Hotel

/* ---------------------------------------------------------------- */

/*
HAVING
    - dominio de analise: grupo
    - temos de ter uma subQuery
    - existe diferenca
        Count = (SELECT MAX...)
        Count() >= (SELECT Count() ...)

Compara��o (>=; ...)
    - Se Count() >= ALL
    ... se e se se for maior ou igual a TODOS os elementos que a sua subQuery
    ... se algum falhar, nao imprime (falha a condicao)

//INSERIR DADOS PELO SQL
INSERT INTO cliente VALUES (...pela ordem que etao na tabela...)

SEMPRE DEPOIS DO WHERE
    ex: GROUP BY Sigla_Hotel

ORDER BY � o unico que � no fim

UNION
    
QUANTOS... palavra no enunciado que indica que temos de usar o Count() (...)
    - ex: SELECT sigla_hotel, COUNT(*) AS "NUMERO QUARTOS"

SEMPRE... que no SELECT juntamente com o Count() � colocado a impressao de um campo adicional
    - GROUP BY sigla_hotel... mesmo nome que o campo adicional que quero visualizar...

    SELECT sigla_hotel, COUNT(*) AS "NUMERO QUARTOS"
    //...
    GROUP BY sigla_hotel


*/









