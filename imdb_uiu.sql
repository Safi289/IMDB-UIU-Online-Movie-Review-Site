-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2019 at 11:22 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imdb_uiu`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` varchar(15) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `name`) VALUES
('01', 'america'),
('02', 'india'),
('03', 'bangladesh'),
('04', 'spain'),
('05', 'germany'),
('06', 'england'),
('07', 'australia'),
('08', 'canada'),
('09', 'russia'),
('10', 'france'),
('11', 'italy'),
('12', 'maxico'),
('13', 'japan');

-- --------------------------------------------------------

--
-- Table structure for table `country_location`
--

CREATE TABLE `country_location` (
  `location_id` varchar(15) NOT NULL,
  `country_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_location`
--

INSERT INTO `country_location` (`location_id`, `country_id`) VALUES
('01', '01'),
('02', '01'),
('04', '01'),
('05', '01'),
('03', '09');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` varchar(15) NOT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `title`) VALUES
('01', 'horror'),
('02', 'drama'),
('03', 'action'),
('04', 'fantasy'),
('05', 'animation'),
('06', 'thriller'),
('07', 'comedy'),
('08', 'musical'),
('09', 'romance'),
('10', 'war'),
('11', 'sci-fi'),
('12', 'biography'),
('13', 'history'),
('14', 'adventure'),
('15', 'sport'),
('16', 'family'),
('17', 'crime'),
('18', 'mystery');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` varchar(15) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `name`) VALUES
('01', 'english'),
('02', 'hindi'),
('03', 'benglai'),
('04', 'spanish'),
('05', 'german'),
('07', 'french'),
('08', 'italian'),
('09', 'maxican'),
('10', 'japanese'),
('11', 'russian');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` varchar(15) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `name`) VALUES
('01', 'michigan'),
('02', '1010 King Court, Kingsland, Texas, USA '),
('03', 'Saint-Petersburg, Russia'),
('04', 'Brewster Building Apartments - 2800 N. Pine Grove '),
('05', 'St. Croix, U.S. Virgin Islands');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` varchar(15) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `release_year` int(4) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `vote` int(10) DEFAULT NULL,
  `run_time` int(10) DEFAULT NULL,
  `story_line` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `title`, `release_year`, `rating`, `vote`, `run_time`, `story_line`) VALUES
('01', 'evil dead', 1981, '7.5', 155976, 85, 'Five college students take time off to spend a peaceful vacation in a remote cabin. A book and audio tape is discovered, and its evil is found to be powerful once the incantations are read out loud. The friends find themselves helpless to stop the evil as it takes them one by one, with only one survivor left with the evil dead and desperately tries to fight to live until morning.'),
('02', 'texas chain saw messacre', 1974, '7.5', 109379, 83, 'En route to visit their grandfather\'s grave (which has apparently been ritualistically desecrated), five teenagers drive past a slaughterhouse, pick up (and quickly drop) a sinister hitch-hiker, eat some delicious home-cured meat at a roadside gas station, before ending up at the old family home... where they\'re plunged into a never-ending nightmare as they meet a family of cannibals who more than make up in power tools what they lack in social skills...'),
('03', 'childs play', 1988, '6.6', 69244, 87, 'When Charles Lee Ray needs to get quick escape from cop Mike Norris, he takes his soul and buries it into playful, seemingly good guy doll Chucky. Little does he know a little boy by the name of Andy Barclay will be the new owner of him soon-to-come. Charles confides in Andy while he commits numerous murders. Once the adults accept Andy\'s story as truth, it\'s too '),
('04', 'shawshank redemption', 1994, '9.3', 1884404, 142, 'Chronicles the experiences of a formerly successful banker as a prisoner in the gloomy jailhouse of Shawshank after being found guilty of a crime he did not commit. The film portrays the man\'s unique way of dealing with his new, torturous life; along the way he befriends a number of fellow prisoners, most notably a wise long-term inmate named Red.'),
('05', 'molot', 2016, '4.8', 163, 111, 'Victor Stroev aka Russian Hammer is a youth Mix Fight champion willing to win the main fight of his career - the World Champion title. Hammer is right up there as a chance encounter turning into a fight with a sports mobster Shark ends up to be a tragedy for Victor. Victor gets into a terrible car crash that makes it doubtful that he will ever be able to go on with his career in sports, any blow can kill him. Vera whom Shark is trying to get, chooses Victor which makes Shark even more furious. Now Shark will do anything to make Russian Hammer get on the ring and make this fight the last one for him. Victor is not used to give up and ready to risk - he has to defend the honor of his country and the woman he loves. Vera realizes she has to betray Victor in order to save him.');

-- --------------------------------------------------------

--
-- Table structure for table `movie_cast`
--

CREATE TABLE `movie_cast` (
  `movie_id` varchar(15) NOT NULL,
  `person_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_cast`
--

INSERT INTO `movie_cast` (`movie_id`, `person_id`) VALUES
('01', '15'),
('02', '09'),
('03', '12'),
('04', '01'),
('05', '04'),
('05', '05');

-- --------------------------------------------------------

--
-- Table structure for table `movie_country`
--

CREATE TABLE `movie_country` (
  `movie_id` varchar(15) NOT NULL,
  `country_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_country`
--

INSERT INTO `movie_country` (`movie_id`, `country_id`) VALUES
('01', '01'),
('02', '01'),
('03', '01'),
('04', '01'),
('05', '09');

-- --------------------------------------------------------

--
-- Table structure for table `movie_director`
--

CREATE TABLE `movie_director` (
  `movie_id` varchar(15) NOT NULL,
  `person_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_director`
--

INSERT INTO `movie_director` (`movie_id`, `person_id`) VALUES
('04', '02'),
('01', '06'),
('02', '08'),
('03', '11'),
('05', '14');

-- --------------------------------------------------------

--
-- Table structure for table `movie_genre`
--

CREATE TABLE `movie_genre` (
  `movie_id` varchar(15) NOT NULL,
  `genre_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_genre`
--

INSERT INTO `movie_genre` (`movie_id`, `genre_id`) VALUES
('01', '01'),
('02', '01'),
('03', '01'),
('03', '06'),
('04', '02'),
('04', '17'),
('05', '02');

-- --------------------------------------------------------

--
-- Table structure for table `movie_language`
--

CREATE TABLE `movie_language` (
  `movie_id` varchar(15) NOT NULL,
  `language_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_language`
--

INSERT INTO `movie_language` (`movie_id`, `language_id`) VALUES
('01', '01'),
('02', '01'),
('03', '01'),
('04', '01'),
('05', '11');

-- --------------------------------------------------------

--
-- Table structure for table `movie_location`
--

CREATE TABLE `movie_location` (
  `movie_id` varchar(15) NOT NULL,
  `location_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_location`
--

INSERT INTO `movie_location` (`movie_id`, `location_id`) VALUES
('01', '01'),
('02', '02'),
('03', '04'),
('04', '05'),
('05', '03');

-- --------------------------------------------------------

--
-- Table structure for table `movie_produce`
--

CREATE TABLE `movie_produce` (
  `movie_id` varchar(15) NOT NULL,
  `production_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_produce`
--

INSERT INTO `movie_produce` (`movie_id`, `production_id`) VALUES
('05', '02'),
('01', '03'),
('02', '04'),
('03', '05'),
('04', '05');

-- --------------------------------------------------------

--
-- Table structure for table `movie_writer`
--

CREATE TABLE `movie_writer` (
  `movie_id` varchar(15) NOT NULL,
  `person_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_writer`
--

INSERT INTO `movie_writer` (`movie_id`, `person_id`) VALUES
('05', '03'),
('01', '06'),
('02', '07'),
('03', '10'),
('04', '13');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` varchar(15) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `name`, `date_of_birth`, `gender`) VALUES
('01', 'Morgan Freeman', '1937-06-01', 'male'),
('02', 'Frank Darabont', '1959-01-28', 'male'),
('03', 'oleg malovichko', '1959-12-03', 'male'),
('04', 'Aleksey Chadov', '1981-09-02', 'male'),
('05', 'Oksana Akinshina', '1987-04-19', 'female'),
('06', 'Sam Raimi', '1959-10-23', 'male'),
('07', 'Kim Henkel', '1946-01-19', 'male'),
('08', 'Tobe Hooper', '1943-01-25', 'male'),
('09', 'Marilyn Burns', '1949-05-07', 'female'),
('10', 'Don Mancini', '1963-01-25', 'male'),
('11', 'Tom Holland', '1943-07-11', 'male'),
('12', 'Catherine Hicks', '1951-08-06', 'female'),
('13', 'Stephen King', '1947-09-21', 'male'),
('14', 'Nurbek Egen', '1957-01-01', 'male'),
('15', ' Bruce Campbell', '1958-06-22', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `production_id` varchar(15) NOT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `production`
--

INSERT INTO `production` (`production_id`, `title`) VALUES
('01', 'Content Matters'),
('02', 'Russian Golden Episodes'),
('03', 'Renaissance Pictures'),
('04', 'Vortex'),
('05', 'United Artists');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `hash`, `active`) VALUES
(1, 'safi', 'sahid', 'everythingdies821@gmail.com', '$2y$10$p4oTB7i0CHj3MkH2rTAfa.3VmEWpeXdgR00I5oTd0Z8f8OC4zpTs6', 'efe937780e95574250dabe07151bdc23', 0),
(2, 'max', 'payne', 'maxpayne@gmail.com', '$2y$10$LzHcQMtdKvn2FkNCyyur4uljRjHyOkGVAiB9IE/IxrcmMuxVOrGDi', 'f387624df552cea2f369918c5e1e12bc', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `country_location`
--
ALTER TABLE `country_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD PRIMARY KEY (`movie_id`,`person_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `movie_country`
--
ALTER TABLE `movie_country`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `movie_director`
--
ALTER TABLE `movie_director`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`movie_id`,`genre_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `movie_language`
--
ALTER TABLE `movie_language`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `movie_location`
--
ALTER TABLE `movie_location`
  ADD PRIMARY KEY (`movie_id`,`location_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `movie_produce`
--
ALTER TABLE `movie_produce`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `production_id` (`production_id`);

--
-- Indexes for table `movie_writer`
--
ALTER TABLE `movie_writer`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`production_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `country_location`
--
ALTER TABLE `country_location`
  ADD CONSTRAINT `country_location_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `country_location_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD CONSTRAINT `movie_cast_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_cast_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_country`
--
ALTER TABLE `movie_country`
  ADD CONSTRAINT `movie_country_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_country_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_director`
--
ALTER TABLE `movie_director`
  ADD CONSTRAINT `movie_director_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_director_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_language`
--
ALTER TABLE `movie_language`
  ADD CONSTRAINT `movie_language_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_language_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_location`
--
ALTER TABLE `movie_location`
  ADD CONSTRAINT `movie_location_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_location_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_produce`
--
ALTER TABLE `movie_produce`
  ADD CONSTRAINT `movie_produce_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_produce_ibfk_2` FOREIGN KEY (`production_id`) REFERENCES `production` (`production_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_writer`
--
ALTER TABLE `movie_writer`
  ADD CONSTRAINT `movie_writer_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_writer_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
