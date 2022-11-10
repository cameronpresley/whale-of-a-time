
INSERT INTO forecasts(date, temperatureC, summary)
VALUES(NOW(), 2, 'Mild');

INSERT INTO forecasts(date, temperatureC, summary)
VALUES((NOW()-interval '1 day'), 17, 'Cool');

INSERT INTO forecasts(date, temperatureC, summary)
VALUES((NOW()-interval '2 day'), 33, 'Bracing');

INSERT INTO forecasts(date, temperatureC, summary)
VALUES((NOW()-interval '3 day'), 44, 'Scorcher');

INSERT INTO forecasts(date, temperatureC, summary)
VALUES((NOW()-interval '4 day'), -16, 'Freezing');

INSERT INTO forecasts(date, temperatureC, summary)
VALUES((NOW()-interval '5 day'), 29, 'Hot');
