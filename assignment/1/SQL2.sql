SELECT snum, Major FROM Student WHERE snum IN(SELECT snum FROM Enrolled where snum in (SELECT MAX(snum) FROM ENROLLED));
