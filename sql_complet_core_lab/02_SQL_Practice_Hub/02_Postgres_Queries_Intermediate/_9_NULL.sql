-- NULL comparison (wrong) → = NULL never works
-- Because NULL cannot be compared using = or !=
SELECT *
FROM company_employees
WHERE salary_amount = NULL;   -- returns nothing


-- IS NOT NULL → shows rows where value exists
SELECT *
FROM company_employees
WHERE employee_id IS NOT NULL;   -- displays all valid employee IDs


-- IS NULL → shows rows where value is missing
SELECT *
FROM company_employees
WHERE salary_amount IS NULL;     -- displays employees with no salary set


-- Summary:
-- IS NULL and IS NOT NULL are used to check empty or non‑empty values
-- IS NULL     → column has no value
-- IS NOT NULL → column has some value
-- = NULL or != NULL never works




-- --------------------------------------------------------------------------------------------------------------
-- creating the table users
CREATE TABLE company_employees (
    employee_id      INT PRIMARY KEY,
    full_name        VARCHAR(100),
    email_address    VARCHAR(120) UNIQUE NOT NULL,
    project_name     VARCHAR(100),
    department_name  VARCHAR(150) NOT NULL,
    password_hash    VARCHAR(255) NOT NULL,
    date_of_joining  DATE NOT NULL,
    salary_amount    NUMERIC(10, 2)
);

-- Inserting the table Values
INSERT INTO company_employees (
    employee_id,
    full_name,
    email_address,
    project_name,
    department_name,
    password_hash,
    date_of_joining,
    salary_amount
)
VALUES	(11, 'Ethan Clark', 'ethan.clark@example.com', 'SecureNet', 'Cybersecurity', 'ethanHASH', '2026-01-10', NULL),
		(12, NULL, 'mia.thomas@example.com', 'AI Labs', 'Research', 'miaHASH', '2026-03-14', 47000.00),
		(13, 'James Walker', 'james.walker@example.com', NULL, 'Cloud Engineering', 'jwHASH', '2026-04-01', NULL),
		(14, 'Charlotte Hill', 'charlotte.hill@example.com', 'DataVision', 'IT', 'charHASH', '2026-05-22', 55000.00),
		(15, NULL, 'ben.morgan@example.com', 'WebWorks', 'Frontend', 'benHASH', '2026-02-11', NULL),
		(16, 'Harper Young', 'harper.young@example.com', NULL, 'Cybersecurity', 'harpHASH', '2026-06-02', 62000.00),
		(17, 'Henry King', 'henry.king@example.com', 'AI Labs', 'Research', 'hkHASH', '2026-03-19', NULL),
		(18, NULL, 'ella.scott@example.com', 'CloudX', 'Cloud Engineering', 'ellaHASH', '2026-04-25', 49000.00),
		(19, 'Alexander Green', 'alex.green@example.com', NULL, 'IT', 'alexHASH', '2026-05-05', NULL),
		(20, 'Amelia Adams', 'amelia.adams@example.com', 'SecureNet', 'Cybersecurity', 'amelHASH', '2026-01-29', 53000.00),
		
		(21, 'Logan Baker', 'logan.baker@example.com', 'DataVision', 'IT', 'logHASH', '2026-02-15', NULL),
		(22, NULL, 'grace.mitchell@example.com', 'AI Labs', 'Research', 'graceHASH', '2026-03-28', 46000.00),
		(23, 'Jacob Perez', 'jacob.perez@example.com', NULL, 'Cloud Engineering', 'jpHASH', '2026-04-18', NULL),
		(24, 'Abigail Roberts', 'abigail.roberts@example.com', 'WebWorks', 'Frontend', 'abiHASH', '2026-05-14', 52000.00),
		(25, NULL, 'daniel.turner@example.com', 'SecureNet', 'Cybersecurity', 'danHASH', '2026-06-03', NULL),
		(26, 'Emily Phillips', 'emily.phillips@example.com', NULL, 'Research', 'emHASH', '2026-01-20', 61000.00),
		(27, 'Matthew Campbell', 'matt.campbell@example.com', 'CloudX', 'Cloud Engineering', 'mcHASH', '2026-02-27', NULL),
		(28, NULL, 'scarlett.parker@example.com', 'AI Labs', 'Research', 'scarHASH', '2026-03-09', 48000.00),
		(29, 'Samuel Evans', 'sam.evans@example.com', NULL, 'IT', 'samHASH', '2026-04-30', NULL),
		(30, 'Victoria Edwards', 'victoria.edwards@example.com', 'WebWorks', 'Frontend', 'vicHASH', '2026-05-21', 50000.00),
		
		(31, 'David Harris', 'david.harris@example.com', 'SecureNet', 'Cybersecurity', 'dhHASH', '2026-01-12', NULL),
		(32, NULL, 'zoe.stewart@example.com', 'AI Labs', 'Research', 'zoeHASH', '2026-02-24', 47000.00),
		(33, 'Joseph Morris', 'joseph.morris@example.com', NULL, 'Cloud Engineering', 'jmHASH', '2026-03-18', NULL),
		(34, 'Hannah Rogers', 'hannah.rogers@example.com', 'DataVision', 'IT', 'hanHASH', '2026-04-11', 54000.00),
		(35, NULL, 'jack.cook@example.com', 'WebWorks', 'Frontend', 'jackHASH', '2026-05-16', NULL),
		(36, 'Natalie Morgan', 'natalie.morgan@example.com', NULL, 'Cybersecurity', 'natHASH', '2026-06-04', 62000.00),
		(37, 'Andrew Bell', 'andrew.bell@example.com', 'AI Labs', 'Research', 'abHASH', '2026-01-25', NULL),
		(38, NULL, 'lily.bailey@example.com', 'CloudX', 'Cloud Engineering', 'lilyHASH', '2026-02-18', 49000.00),
		(39, 'Christopher Rivera', 'chris.rivera@example.com', NULL, 'IT', 'crHASH', '2026-03-27', NULL),
		(40, 'Sofia Cooper', 'sofia.cooper@example.com', 'SecureNet', 'Cybersecurity', 'scHASH', '2026-04-29', 53000.00),
		
		(41, 'Evan Richardson', 'evan.richardson@example.com', 'DataVision', 'IT', 'evHASH', '2026-05-07', NULL),
		(42, NULL, 'madison.cox@example.com', 'AI Labs', 'Research', 'madHASH', '2026-06-02', 46000.00),
		(43, 'Joshua Howard', 'josh.howard@example.com', NULL, 'Cloud Engineering', 'jhHASH', '2026-01-14', NULL),
		(44, 'Avery Ward', 'avery.ward@example.com', 'WebWorks', 'Frontend', 'awHASH', '2026-02-22', 52000.00),
		(45, NULL, 'ryan.brooks@example.com', 'SecureNet', 'Cybersecurity', 'rbHASH', '2026-03-30', NULL),
		(46, 'Ella Foster', 'ella.foster@example.com', NULL, 'Research', 'efHASH', '2026-04-19', 61000.00),
		(47, 'Gabriel Gray', 'gabriel.gray@example.com', 'CloudX', 'Cloud Engineering', 'ggHASH', '2026-05-25', NULL),
		(48, NULL, 'layla.james@example.com', 'AI Labs', 'Research', 'ljHASH', '2026-06-05', 48000.00),
		(49, 'Wyatt Hughes', 'wyatt.hughes@example.com', NULL, 'IT', 'whHASH', '2026-01-17', NULL),
		(50, 'Penelope Bryant', 'penelope.bryant@example.com', 'WebWorks', 'Frontend', 'pbHASH', '2026-02-26', 50000.00),
		
		(51, 'Jonathan Griffin', 'jon.griffin@example.com', 'SecureNet', 'Cybersecurity', 'jgHASH', '2026-03-08', NULL),
		(52, NULL, 'nora.russell@example.com', 'AI Labs', 'Research', 'nrHASH', '2026-04-13', 47000.00),
		(53, 'Christian Diaz', 'christian.diaz@example.com', NULL, 'Cloud Engineering', 'cdHASH', '2026-05-20', NULL),
		(54, 'Ariana Hayes', 'ariana.hayes@example.com', 'DataVision', 'IT', 'ahHASH', '2026-06-01', 54000.00),
		(55, NULL, 'julian.myers@example.com', 'WebWorks', 'Frontend', 'jmHASH', '2026-01-23', NULL),
		(56, 'Savannah Ford', 'savannah.ford@example.com', NULL, 'Cybersecurity', 'sfHASH', '2026-02-14', 62000.00),
		(57, 'Isaac Hamilton', 'isaac.hamilton@example.com', 'AI Labs', 'Research', 'ihHASH', '2026-03-29', NULL),
		(58, NULL, 'violet.graham@example.com', 'CloudX', 'Cloud Engineering', 'vgHASH', '2026-04-21', 49000.00),
		(59, 'Hunter Sullivan', 'hunter.sullivan@example.com', NULL, 'IT', 'hsHASH', '2026-05-31', NULL),
		(60, 'Aurora Wallace', 'aurora.wallace@example.com', 'SecureNet', 'Cybersecurity', 'aw2HASH', '2026-06-04', 53000.00),
		
		(61, 'Thomas West', 'thomas.west@example.com', 'DataVision', 'IT', 'twHASH', '2026-01-09', NULL),
		(62, NULL, 'stella.cole@example.com', 'AI Labs', 'Research', 'sc2HASH', '2026-02-28', 46000.00),
		(63, 'Dylan Stone', 'dylan.stone@example.com', NULL, 'Cloud Engineering', 'dsHASH', '2026-03-22', NULL),
		(64, 'Hazel Lane', 'hazel.lane@example.com', 'WebWorks', 'Frontend', 'hlHASH', '2026-04-17', 52000.00),
		(65, NULL, 'leo.bishop@example.com', 'SecureNet', 'Cybersecurity', 'lbHASH', '2026-05-26', NULL),
		(66, 'Paisley Holt', 'paisley.holt@example.com', NULL, 'Research', 'phHASH', '2026-06-03', 61000.00),
		(67, 'Nathan Lowe', 'nathan.lowe@example.com', 'CloudX', 'Cloud Engineering', 'nlHASH', '2026-01-30', NULL),
		(68, NULL, 'brooklyn.harvey@example.com', 'AI Labs', 'Research', 'bhHASH', '2026-02-19', 48000.00),
		(69, 'Aaron Barrett', 'aaron.barrett@example.com', NULL, 'IT', 'abHASH', '2026-03-16', NULL),
		(70, 'Ellie Newman', 'ellie.newman@example.com', 'WebWorks', 'Frontend', 'enHASH', '2026-04-27', 50000.00),
		
		(71, 'Connor Watts', 'connor.watts@example.com', 'SecureNet', 'Cybersecurity', 'cwHASH', '2026-05-13', NULL),
		(72, NULL, 'claire.holland@example.com', 'AI Labs', 'Research', 'chHASH', '2026-06-06', 47000.00),
		(73, 'Brayden Marsh', 'brayden.marsh@example.com', NULL, 'Cloud Engineering', 'bmHASH', '2026-01-26', NULL),
		(74, 'Lucy Fleming', 'lucy.fleming@example.com', 'DataVision', 'IT', 'lfHASH', '2026-02-21', 54000.00),
		(75, NULL, 'adam.burns@example.com', 'WebWorks', 'Frontend', 'ab2HASH', '2026-03-11', NULL),
		(76, 'Ruby Doyle', 'ruby.doyle@example.com', NULL, 'Cybersecurity', 'rdHASH', '2026-04-24', 62000.00),
		(77, 'Gavin Holt', 'gavin.holt@example.com', 'AI Labs', 'Research', 'ghHASH', '2026-05-18', NULL),
		(78, NULL, 'sadie.mccoy@example.com', 'CloudX', 'Cloud Engineering', 'smHASH', '2026-06-02', 49000.00),
		(79, 'Jason Pratt', 'jason.pratt@example.com', NULL, 'IT', 'jp2HASH', '2026-01-15', NULL),
		(80, 'Maya Briggs', 'maya.briggs@example.com', 'WebWorks', 'Frontend', 'mbHASH', '2026-02-23', 50000.00),
		
		(81, 'Kevin Norris', 'kevin.norris@example.com', 'SecureNet', 'Cybersecurity', 'knHASH', '2026-03-04', NULL),
		(82, NULL, 'alice.harrington@example.com', 'AI Labs', 'Research', 'ah2HASH', '2026-04-20', 47000.00),
		(83, 'Tristan Hale', 'tristan.hale@example.com', NULL, 'Cloud Engineering', 'thHASH', '2026-05-28', NULL),
		(84, 'Eva Ramsey', 'eva.ramsey@example.com', 'DataVision', 'IT', 'erHASH', '2026-06-01', 54000.00),
		(85, NULL, 'owen.mccarthy@example.com', 'WebWorks', 'Frontend', 'omHASH', '2026-01-19', NULL),
		(86, 'Jade Preston', 'jade.preston@example.com', NULL, 'Cybersecurity', 'jp3HASH', '2026-02-16', 62000.00),
		(87, 'Marcus Boyd', 'marcus.boyd@example.com', 'AI Labs', 'Research', 'mb2HASH', '2026-03-24', NULL),
		(88, NULL, 'piper.hines@example.com', 'CloudX', 'Cloud Engineering', 'ph2HASH', '2026-04-28', 49000.00),
		(89, 'Shawn Keller', 'shawn.keller@example.com', NULL, 'IT', 'skHASH', '2026-05-17', NULL),
		(90, 'Luna Barrett', 'luna.barrett@example.com', 'WebWorks', 'Frontend', 'lb2HASH', '2026-06-05', 50000.00),
		
		(91, 'Colton Reese', 'colton.reese@example.com', 'SecureNet', 'Cybersecurity', 'cr2HASH', '2026-01-13', NULL),
		(92, NULL, 'adeline.hart@example.com', 'AI Labs', 'Research', 'ah3HASH', '2026-02-25', 47000.00),
		(93, 'Ryder Pope', 'ryder.pope@example.com', NULL, 'Cloud Engineering', 'rpHASH', '2026-03-20', NULL),
		(94, 'Elena Watts', 'elena.watts@example.com', 'DataVision', 'IT', 'ewHASH', '2026-04-26', 54000.00),
		(95, NULL, 'bryce.hampton@example.com', 'WebWorks', 'Frontend', 'bh3HASH', '2026-05-29', NULL),
		(96, 'Daisy Harmon', 'daisy.harmon@example.com', NULL, 'Cybersecurity', 'dh2HASH', '2026-06-03', 62000.00),
		(97, 'Roman Tate', 'roman.tate@example.com', 'AI Labs', 'Research', 'rtHASH', '2026-01-27', NULL),
		(98, NULL, 'molly.hurst@example.com', 'CloudX', 'Cloud Engineering', 'mhHASH', '2026-02-22', 49000.00),
		(99, 'Zachary Boone', 'zachary.boone@example.com', NULL, 'IT', 'zbHASH', '2026-03-31', NULL),
		(100, 'Clara Shields', 'clara.shields@example.com', 'WebWorks', 'Frontend', 'csHASH', '2026-04-30', 50000.00);

