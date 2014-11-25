%have: [1 3 6 8 9]
a = [1 3 6 8 9]

%pre-alocate: means to reserve specific space in memory
b = zeros(5,5);
b(1,:) = a;

%2:5 - loop from two to five (começa na dois até ao cinco)
%a(percorrer uma linha de cada vez, todas as colunas)
%a(row,:) = quero ao valor da linha anterior, para todas as colunas, somar o valor um;
for linha = 2:5
    b(linha,:) = b(linha-1,:) + 1
end




