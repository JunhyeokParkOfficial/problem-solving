(
    SELECT "A" AS GRADE, A.ID, A.EMAIL
    FROM DEVELOPERS AS A
    JOIN (SELECT CODE
        FROM SKILLCODES
        WHERE CATEGORY = 'Front End') AS B
    ON A.SKILL_CODE & B.CODE = B.CODE
    WHERE A.SKILL_CODE & (SELECT CODE
        FROM SKILLCODES
        WHERE NAME = 'Python')
)
UNION 
(
    SELECT "B" AS GRADE, A.ID, A.EMAIL
    FROM DEVELOPERS AS A
    JOIN (SELECT CODE
        FROM SKILLCODES
        WHERE NAME = 'C#') AS B
    ON A.SKILL_CODE & B.CODE = B.CODE
)
UNION 
(
    SELECT "C" AS GRADE, A.ID, A.EMAIL
    FROM DEVELOPERS AS A
    JOIN (SELECT CODE
        FROM SKILLCODES
        WHERE CATEGORY = 'Front End') AS B
    ON A.SKILL_CODE & B.CODE = B.CODE
    WHERE NOT A.SKILL_CODE & (SELECT CODE
        FROM SKILLCODES
        WHERE NAME = 'Python')
    AND NOT A.SKILL_CODE & (SELECT CODE
        FROM SKILLCODES
        WHERE NAME = 'C#')
)
ORDER BY GRADE, ID