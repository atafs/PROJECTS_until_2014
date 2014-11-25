//Pergunta 1 Listar o nome de todos os cliente ordes desc
SELECT DBA.Cliente.Nome_Cliente FROM Cliente ORDER BY Nome_Cliente DESC 

//Pergunta 2 listar desig dos hoteis com a sigla M
SELECT DBA.Hotel.Designacao FROM Hotel WHERE Hotel.Sigla_Hotel like '%M%' 

//P.3 qual os nomes dos cliente indivi que nao têm BI
SELECT  Cliente.Nome_Cliente 
    FROM Individual, Cliente 
    WHERE Cliente.Numero_Cliente = Individual.numero_Cliente AND Individual.BI is NULL 

//P.4 Listar quartos de hotel cuja sigla é RM
SELECT numero_quarto FROM quarto WHERE sigla_hotel = 'RM'

//P5 Listar o nome de todos os clientes individuais
SELECT c.Nome_Cliente 
    FROM Cliente c, Individual i 
    WHERE  c.Numero_Cliente = i.Numero_Cliente

//P6 Listar tb o numero do cliente
SELECT c.Nome_Cliente AS "Nome", c.numero_cliente AS "Numero" 
    FROM Cliente c, Individual i 
    WHERE  c.Numero_Cliente = i.Numero_Cliente

//7 Listar o nome todos os clientes das organizacoes q trabalham no ramo alimentar
SELECT c.Nome_cliente 
    FROM cliente c, Organizacao o 
    where c.numero_cliente = o.numero_cliente AND o.ramo_actividade like '10%'

//8. quais os quartos reservados pela NASA? e pela Ana? todos os da nasa e da ana
SELECT sigla_hotel, numero_quarto 
FROM cliente c, reserva r, reserva_quartos rq 
    where c.numero_cliente = r.numero_cliente AND r.numero_reserva = rq.numero_reserva 
    AND nome_cliente like 'NASA'
   
//9 qntas camas existem em cada quarto reservado pelo Pedro
SELECT numero_camas, q.sigla_hotel, rq.numero_quarto 
FROM cliente c, reserva r, reserva_quartos rq, quarto q 
    where c.numero_cliente = r.numero_cliente 
    AND r.numero_reserva = rq.numero_reserva 
    AND rq.sigla_hotel = q.sigla_hotel
    AND rq.numero_quarto = q.numero_quarto 
    AND c.nome_cliente = 'Pedro'

//10. nomes dos hoteis onde o iscte efectuou as reservas
SELECT DISTINCT h.designacao
    FROM cliente c, reserva r, Reserva_Quartos rq, hotel h 
    WHERE c.numero_cliente = r.numero_cliente
    AND r.numero_reserva = rq.numero_reserva 
    AND rq.sigla_hotel = h.sigla_hotel
    AND c.nome_cliente = 'ISCTE'