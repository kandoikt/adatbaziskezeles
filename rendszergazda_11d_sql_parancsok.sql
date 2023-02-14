SELECT
    *
FROM
    ellenorzo
INNER JOIN osztaly_nevsor ON ellenorzo.osztaly_nevsor_id = osztaly_nevsor.id


INSERT INTO `ellenorzo`(
    `id`,
    `osztaly_nevsor_id`,
    `tantargy_neve`,
    `jegy`,
    `datum`,
    `tema`
)
VALUES(
    NULL,
    '1',
    'tortenelem',
    '5',
    '2023-01-25',
    'Órai munka'
);


INSERT INTO `osztaly_nevsor`(`id`, `vnev`, `knev`)
VALUES(NULL, 'Teszt', 'Elek');

