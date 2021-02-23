-- Creating table for VacCines Datset
CREATE TABLE Vaccines (
    country VARCHAR(40) NOT NULL,
    iso_code VARCHAR(40) NOT NULL,
    dates DATE NOT NULL,
    total_vaccines INT NOT NULL,
    daily_vaccinations INT NOT NULL,
    total_people_vaccindated_per_hundred INT NOT NULL,
    people_vacinated_per_hundred INT NOT NULL,
    people_fully_vaccinated_per_hundred INT NOT NULL,
    vaccines VARCHAR(40),
    PRIMARY KEY (date)


);


-- Creating table for USA Data
CREATE TABLE USA_Data(
    dates DATE NOT NULL,

    FOREIGN KEY(date) REFERENCES Vaccines(date)
);



-- Joining tables

SELECT v.dates
INTO merged_dataset
FROM Vaccines AS v
FULL OUTER JOIN USA_Data as usa
ON v.datse = usa.dates
ORDER BY v.dates
