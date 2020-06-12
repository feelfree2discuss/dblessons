-- 3. (по желанию) Проанализировать структуру БД vk, которую мы создали на занятии, и внести предложения по усовершенствованию (если такие идеи есть). Напишите пожалуйста, всё-ли понятно по структуре.

-- * как говорилось на уроке, пол можно сделать типом ENUM
CREATE TABLE profiles
(
-- ...
    gender ENUM ('Male', 'Female', 'Other') NOT NULL COMMENT "Пол",
-- ...
) COMMENT "Профили";

-- * profiles.country можно вынести в отдельную таблицу справочник
-- * profiles.city можно вынести в отдельную таблицу справочник со связью в таблицу стран
CREATE TABLE profiles
(
    user_id    INT UNSIGNED                     NOT NULL PRIMARY KEY COMMENT "Ссылка на пользователя",
    gender     ENUM ('Male', 'Female', 'Other') NOT NULL COMMENT "Пол",
    birthday   DATE COMMENT "Дата рождения",
    city_id    INT UNSIGNED                     NOT NULL COMMENT "Город проживания",
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Профили";

CREATE TABLE countries
(
    id         INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор страны",
    name       VARCHAR(130) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Страны";

CREATE TABLE cities
(
    id         INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор города",
    name       VARCHAR(130) NOT NULL,
    country_id INT UNSIGNED NOT NULL COMMENT "Страна проживания",
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Города";

-- * стилистическое - friendship.friend_id можно переименовать во friend_user_id





