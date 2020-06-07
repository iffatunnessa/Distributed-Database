set serveroutput on;

DECLARE

n_cho number;
n_pep number;
c number;

begin
n_cho:= &enter_value;
n_pep:= &enter_value;

c := distribution(n_cho, n_pep);
print(c);

end;
/