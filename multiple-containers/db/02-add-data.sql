/*
CREATE TABLE IF NOT EXISTS forecasts (
    id INT NOT NULL PRIMARY KEY,
    date TIMESTAMPTZ,
    temperature INT,
    summary TEXT NOT NULL
  );
  */
INSERT INTO forecasts(date, temperature, summary)
VALUES(NOW(), 2, 'Mild');

INSERT INTO forecasts(date, temperature, summary)
VALUES((NOW()-interval '1 day'), 17, 'Cool');

INSERT INTO forecasts(date, temperature, summary)
VALUES((NOW()-interval '2 day'), 33, 'Bracing');

INSERT INTO forecasts(date, temperature, summary)
VALUES((NOW()-interval '3 day'), 44, 'Scorcher');

INSERT INTO forecasts(date, temperature, summary)
VALUES((NOW()-interval '4 day'), -16, 'Freezing');

INSERT INTO forecasts(date, temperature, summary)
VALUES((NOW()-interval '5 day'), 29, 'Hot');
