/*
Example lesson stub
*/
SELECT		ps.PatientId,
			ps.hospital,
			ps.Ward,
			DATEADD(WEEK, -2, ps.admitteddate) AS reminderdate,
			ps.AdmittedDate,
			ps.DischargeDate,
			DATEDIFF(DAY, PS.AdmittedDate, PS.DischargeDate) AS enghtofstay,
			DATEADD(MONTH, 3, ps.DischargeDate) AS Appdate
FROM		Patientstay AS PS
WHERE		ps.Hospital IN ('kingston', 'Pruh')
			AND ps.Ward LIKE '%surgery'
			AND ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-02-29'
ORDER BY	ps.AdmittedDate, ps.DischargeDate;

SELECT	DATEADD(MONTH, 3, '2026-10-26') AS TestValue;