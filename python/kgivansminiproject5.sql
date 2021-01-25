drop table if exists video;

Create table video(
Videoid serial primary key,
Title VARCHAR (255) NOT NULL,
Length INTEGER,
URL  VARCHAR (255) NOT NULL
);

----
INSERT INTO public.video (title, length, URL)
VALUES ('my3rdtitle', 215, 'www.youtube.com/myfirsttitle');

select * from video

Create table reviewers(
Reviewersid serial primary key,
Videoid integer,
Name VARCHAR (255) NOT NULL,
Comment  VARCHAR (255) NOT NULL
);

----
Insert INTO public.reviewers (videoid,name, comment)
Values (2,'John', 'liked it');

select * from reviewers

select a.title, b.name from video a
join reviewers b on a.videoid= b.videoid
where a.videoid =2







		