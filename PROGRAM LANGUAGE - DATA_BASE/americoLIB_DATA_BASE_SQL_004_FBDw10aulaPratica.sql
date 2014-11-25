/* **************** Colec��o de Exerc�cios de SQL parte III ************** */

//1. Listar o nome de todos os clientes por ordem alfab�tica decrescente.
SELECT nome_cliente
FROM Cliente
ORDER BY nome_cliente DESC

//8. Para cada nome de uma organiza��o indicar o total de reservas existentes.
SELECT c.nome_cliente, count(*)
FROM Organizacao o, Reserva r, Cliente c
//evitar produto cartesiano
WHERE r.numero_cliente = o.numero_cliente AND c.numero_cliente = o.numero_Cliente
GROUP BY c.nome_cliente
UNION
SELECT nome_cliente, 0
FROM Organizacao, Cliente
//evitar produto cartesiano
WHERE cliente.numero_cliente = Organizacao.numero_cliente AND NOT EXISTS  
    ( SELECT *
      FROM  Reserva
      WHERE reserva.numero_cliente = cliente.numero_cliente
    )


/*9 Para cada designa��o de uma organiza��o 
    indicar o total de reservas 
    existentes por hotel. */
SELECT c.nome_cliente, Sigla_Hotel, count(DISTINCT  r.numero_reserva)
    FROM Organizacao o, Reserva r, Reserva_Quartos rq, Cliente c
    //produto cartesiano
    WHERE c.Numero_cliente = o.Numero_cliente 
    AND r.Numero_reserva = rq.Numero_reserva AND c.numero_cliente = r.numero_Cliente
    GROUP BY rq.Sigla_Hotel, nome_cliente
    ORDER BY Sigla_Hotel

/*10.   Listar a designa��o das organiza��es que t�m reservas em mais hot�is. R: CONTINENTE */
SELECT  Nome_Cliente, count(DISTINCT sigla_hotel)
FROM Cliente c, Reserva r, Reserva_Quartos rq, Organizacao o
//join: produto cartesiano
WHERE c.numero_cliente = r.numero_cliente AND r.numero_reserva = rq.numero_reserva AND o.numero_cliente = c.numero_cliente
GROUP BY Nome_Cliente
Having count(DISTINCT sigla_hotel) >= all ( SELECT count(DISTINCT sigla_hotel)
FROM Cliente c, Reserva r, Reserva_Quartos rq, Organizacao o
//join: produto cartesiano
WHERE c.numero_cliente = r.numero_cliente AND r.numero_reserva = rq.numero_reserva AND o.numero_cliente = c.numero_cliente
GROUP BY Nome_Cliente)

'n�o est� a fazer o que � suposto...'

/* 11. Listar a designa��o dos hot�is que, independentemente das reservas de individuais, t�m reservas de apenas uma organiza��o. R: Sheraton, Lisboa */
'racioc�nio:
    - Listar a designa��o dos hot�is (...)  = SELECT sigla_hotel 
    - independentemente (...)               = (????????????????) significado: independentemente 
    - das reservas de individuais (...)     = FROM Reserva_Quartos rq, Reserva r, Individual i 
                                            = WHERE c.numero_cliente = r.numero_cliente 
                                            AND i_numero_cliente = r.numero_cliente
                                            AND rq.numero_erserva = r.numero_reserva
    - t�m reservas de apenas uma organiza��o (...)  = GROUP BY r.sigla_hotel
    '

SELECT sigla_hotel, count(*)
FROM Reserva_Quartos rq, Reserva r, Individual i 
//join: produto cartesiano
WHERE c.numero_cliente = r.numero_cliente AND i_numero_cliente = r.numero_cliente AND rq.numero_reserva = r.numero_reserva
GROUP BY r.sigla_hotel
    
'tamb�m n�o est� bem... Dificuldades no racioc�nio... leitura do enunciado da pergunta...'                                                                                                         
/* 12. Listar a designa��o dos hot�is que apenas t�m reservas de um cliente, cliente esse que � organiza��o. R: Sheraton */
... 1�contar os clientes organizacao de cada hotel (group by)
... 2� selecionar os grupos onde � um
'Listar a designa��o dos hot�is(...)        - SELECT Sigla_Hotel
que apenas  (...)                           - (???????????????????????????) significado?
t�m reservas de um cliente(...)             - FROM Reserva r, reserva_Quartos rq
cliente esse que � organiza��o.             - (???????????????????????????) racioc�nio?
'

SELECT Sigla_Hotel
FROM Reserva r, Reserva_Quartos rq, Organizacao o
//join: produto cartesiano
WHERE rq.numero_reserva = r.numero_reserva AND o.numero_cliente = r.numero_cliente

/* 13. Listar o nome das organiza��es que t�m reservas em todos os hot�is. R: CONTINENTE */
'Listar o nome das organiza��es(...)    - SELECT nome_cliente
que t�m reservas (...)                  - FROM Organizacao o, Reserva r, Reserva_Quartos rq
                                        - WHERE count(numero_quartos > 0)
em todos os hot�is. (...)               - ALL (SELECT sigla_hotel FROM hotel)

??????  posso por count() fora do SELECT
'

...compareacao entre duas query

SELECT nome_contacto
FROM Organizacao o, Reserva r, Reserva_Quartos rq
WHERE count(numero_quartos > 0)
ALL (SELECT sigla_hotel FROM hotel)


/* 14. Listar as designa��es dos hot�is com maior n�mero de quartos livres (sem Reservas). R: Sheraton e Mundial */
'(Listar) as designa��es dos hot�is - SELECT Designacao FROM Hotel h, Quarto q, Reserva_Quartos rq 
                                      WHERE h.sigla_hotel = q.sigla_hotel AND q.numero_quarto = rq.numero_quarto  
com maior n�mero                    - AND (SELECT ... FROM Quarto q, Reserva_Quartos rq WHERE  q.numero_quarto = rq.numero_quarto
de quartos livres (sem Reservas).                                                        AND q.numero_quarto > 0)
' 

... NOT IN 

SELECT Designacao 
FROM Hotel h, Quarto q, Reserva_Quartos rq 
WHERE h.sigla_hotel = q.sigla_hotel AND q.numero_quarto = rq.numero_quarto  
AND (SELECT q.numero_quarto FROM Quarto q, Reserva_Quartos rq WHERE  q.numero_quarto = rq.numero_quarto AND q.numero_quarto > 0)

'como escrevo no ecr� (...) e (...); pensava que s� podiamos imprimir tabelas...'                                                                                       

/* 15. Listar a designa��o do hotel com maior volume de factura��o (indicando a factura��o). */
'(Listar) a designa��o do hotel     - SELECT Designacao, Preco FROM Hotel h, Quarto q WHERE h.sigla_hotel = q.sigla_hotel
com maior volume de factura��o      - AND (SELECT sigla_hotel, preco, count(*) From Quarto)
(indicando a factura��o).'

SELECT Designacao, Preco 
FROM Hotel h, Quarto q 
WHERE h.sigla_hotel = q.sigla_hotel
AND ( SELECT sigla_hotel, preco, count(*) From Quarto GROUP BY sigla_hotel, preco ORDER BY sigla_hotel )

' (????????) maior volume de facturacao = somatorio do campo preco por quarto'

/* 16 Listar os dias para os quais apenas existe uma reserva. */
'(Listar) os dias                           - SELECT Dia_Entrada FROM Reserva r, Reserva_Quartos rq WHERE r.numero_reserva = rq.numero_reserva
(para os quais) apenas existe uma reserva  - AND 
'
SELECT Dia_Entrada FROM Reserva r, Reserva_Quartos rq WHERE r.numero_reserva = rq.numero_reserva

' (????????????) n�o percebo a pergunta: listar os dias para os quais um hotel tem apenas uma reserva ???' 

... contar por data de entrada

/* 17. Para Cada Factura. Indicar o seu valor. Actualize os valores das facturas. (update) */
'Para Cada Factura.                             - SELECT Nummero_Factura, Valor_Factura From Factura 
Indicar o seu valor.
Actualize os valores das facturas. (update)     - UPDATE '    

SELECT Numero_Factura, Valor_Factura From Factura 

' (??????????????) Tenho as facturas com valor nulo: porqu�???
  (??????????????) como usar o update??? '
 
/*
LEITURA:
"..."por cada"..." - GROUP BY

PRODUTO CARTESIANO:
... FEITO DA CHAVE primaria - CHAVE estrangeira...
... QUANTIDADE: no m�nimo n-1; 
... podendo ser mais por cada lica��o adicional de chaves primaria - estrangeiras




*/






