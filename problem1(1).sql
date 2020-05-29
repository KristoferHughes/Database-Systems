/*
Kristofer Hughes
CSC 355 Section 402
Assignment 6 Problem 1
November 13th, 2019
*/

begin
totalpay = WORKER.WHours * WORKER..WRate 
totalbonus = BONUSINFO.BAmount * COUNT(BONUSINFO.BLevel)
end

DBMS_OUTPUT.put_line(‘Bonus levEl and amount ' ' || BONUSINFO.BLevel || ' ' ||BONUSINFO.BAmount);
loop
DBMS_OUTPUT.put_line(WORKER.WID || ' ' || WORKER.WHours || ' ' || WORKER.WRATE || '' ||totalpay);
end loop;
DBMS_OUTPUT.put_line('Total bonuses ' || totalbonus);
end;