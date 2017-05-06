-- Höfundar verkefnis er Sigurður Róbert Rúnarsson og Viðar Erik Viðarsson
CREATE TABLE flokkur
(
    id int primary key auto_increment,
    nafn varchar(255)
);

CREATE TABLE tegund
(
    id int primary key auto_increment,
    nafn varchar(255)
);

CREATE TABLE utgefandi
(
    id int primary key auto_increment,
    nafn varchar(255)
);


CREATE TABLE flytjandi
(
    id int primary key auto_increment,
    nafn varchar(100),
    faedingardagur int(100),
    lysing text,
    danardagur int(100) null,
    tegund_flytjanda int(30),
    vefsida varchar(100) null,
    uppruni varchar(100),
    Foreign Key(tegund_flytjanda) references flokkur(id)
);

CREATE TABLE diskur
(
    id int primary key auto_increment,
    nafn varchar(100),
    utgafudagur int(100),
    tegund_disks int(30),
    tilnefningar varchar(255) null,
    utgefandi int(30),
    Foreign Key(tegund_disks) references tegund(id),
    Foreign Key(utgefandi) references utgefandi(id)
);

CREATE TABLE lag
(
    id int primary key auto_increment,
    nafn varchar(255),
    lengd int(200),
    texti text null,
    flokkur int(100),
    diskur int(100),
    flytjandi int(100),
    tegund int(100),
    Foreign Key(flokkur) references flokkur(id),
    Foreign Key(diskur) references diskur(id),
    Foreign Key(flytjandi) references flytjandi(id),
    Foreign Key(tegund) references tegund(id)
);

INSERT INTO flokkur(nafn)
VALUES
("Solo"),
("Band"),
("Orchestra");

INSERT INTO tegund(nafn)
VALUES
("Metal"),
("Pop"),
("Rock"),
("Jazz"),
("Hip Hop"),
("Progressive Rock"),
("Fingerstyle Acoustic"),
("House");

INSERT INTO utgefandi(nafn)
VALUES
("Virgin"),
("Vertigo"),
("Warner Music"),
("Sonu/ATV Music"),
("Encore"),
("Candy Rat"),
("Superhype"),
("Ultra Music Media");

INSERT INTO flytjandi(nafn, faedingardagur, lysing, danardagur, tegund_flytjanda, vefsida, uppruni)
VALUES
("Led Zeppelin", 1968, "Led Zeppelin were an English rock band formed in London in 1968. 
The group consisted of guitarist Jimmy Page, singer Robert Plant, 
bassist and keyboardist John Paul Jones, and drummer John Bonham. 
The band's heavy, guitar-driven sound, rooted in blues and psychedelia on their early albums, 
has earned them recognition as one of the progenitors of heavy metal, 
though their unique style drew from a wide variety of influences, including folk music." ,1980, 2, "www.ledzeppelin.com", "London, England");

INSERT INTO flytjandi(nafn, faedingardagur, lysing, danardagur, tegund_flytjanda, vefsida, uppruni)
VALUES
("Mike Oldfield", 1953, "It was late one evening in 1973, 
when, with the professional musicians resident at Richard Branson’s country estate The Manor finished up for the day,
 the unknown Mike Oldfield settled in for one night of frantic production on his debut record.", null, 1, "mikeoldfieldofficial.com/", 
 "England");
 
 
INSERT INTO flytjandi(nafn, faedingardagur, lysing, danardagur, tegund_flytjanda, vefsida, uppruni)
VALUES
 ("Eminem", 1972, "Marshall Bruce Mathers III (born October 17, 1972),
 [1] known professionally as Eminem (often stylized as EMINƎM), is an American rapper, 
 record producer, and actor. Eminem is the best-selling artist of the 2000s in the United States. 
 Throughout his career, he has had 10 number-one albums on the Billboard 200 and five number-one singles on the Billboard Hot 100. With US sales of 45.1 
 million albums and 42 million tracks as of June 2014, Eminem is the second best-selling male artist of the Nielsen SoundScan era, 
 the sixth best-selling artist in the United States and the best-selling hip-hop artist. Globally, he has sold more than 172 million albums, 
 thus being one of the world's best-selling artists. Rolling Stone ranked him 83rd on its list of 100 Greatest Artists of All Time, 
 calling him the King of Hip Hop.", null, 1, "www.eminem.com", "St. Joseph, Missouri, U.S.");
 
 
INSERT INTO flytjandi(nafn, faedingardagur, lysing, danardagur, tegund_flytjanda, vefsida, uppruni)
VALUES
 ("Wes Montgomery", 1923, "John Leslie Wes Montgomery (March 6, 1923 – June 15, 1968)
 [1] was an American jazz guitarist. He is widely considered one of the major jazz guitarists,
 emerging after such seminal figures as Django Reinhardt[2]and Charlie Christian and influencing countless others. 
 Montgomery was known for an unusual technique of plucking the strings with the side of his thumb which granted him a distinctive sound.", 1968, 
 2, "www.wesmontgomery.com", "Indiana US");
 
 
INSERT INTO flytjandi(nafn, faedingardagur, lysing, danardagur, tegund_flytjanda, vefsida, uppruni)
VALUES
 ("Metallica", 1981, "Metallica is an American heavy metal band based in San Rafael, California. 
 The band was formed in 1981 in Los Angeles when vocalist/guitarist James Hetfield responded to an advertisement posted by drummer Lars Ulrich in a local
 newspaper. 
 Metallica's current line-up comprises founding members Hetfield and Ulrich, longtime lead guitarist Kirk Hammett and bassist Robert Trujillo. 
 Guitarist Dave Mustaine and bassists Ron McGovney, Cliff Burton and Jason Newsted are former members of the band.", null, 2, "www.metallica.com", 
 "Los Angeles");
 
 
INSERT INTO flytjandi(nafn, faedingardagur, lysing, danardagur, tegund_flytjanda, vefsida, uppruni)
VALUES
 ("Andy Mckee", 1979, "McKee played his first guitar, an Aria nylon string bought by his father, at age 13. 
 Initially underwhelmed by his guitar lessons, McKee began teaching himself how to play guitar. He began learning shred guitar music, 
 including songs by Metallica, Eric Johnson, and Joe Satriani. McKee's electric guitar-playing cousin inspired him to continue learning, 
 taking him out for his 16th birthday to see a guitarist named Preston Reed perform live at a clinic.
 McKee later bought an instructional videotape from Reed and began to learn many of his acoustic guitar techniques from it. 
 Later that year, with his mother's permission, he obtained his GED in order to quit attending high school and play more guitar. 
 He began to be influenced by guitarists such as Michael Hedges, Billy McLaughlin, Pat Kirtley, and from Passion Session by Don Ross, 
 as he continued studying the instrument on his own.", null, 1, "www.andymckee.com", "Topeka, Kansas, US");
 
 
INSERT INTO flytjandi(nafn, faedingardagur, lysing, danardagur, tegund_flytjanda, vefsida, uppruni)
VALUES
 ("DeadMau5", 1981, "Joel Thomas Zimmerman (born January 5, 1981), better known by his stage name deadmau5 (pronounced dead mouse),
 is a Canadian record producer and DJ from Toronto, Ontario. 
 Zimmerman produces a variety of styles within the progressive house genre and sometimes other forms of electronic music.", null , 1,
 "deadmau5.com", "Canada" );
 
INSERT INTO flytjandi(nafn, faedingardagur, lysing, danardagur, tegund_flytjanda, vefsida, uppruni)
VALUES 
 ("Michael Jacksone", 1958, "Michael Joseph Jackson[1][2] (August 29, 1958 – June 25, 2009) was an American singer, songwriter, record producer,
 dancer, actor, and philanthropist. Called the King of Pop,his contributions to music, dance, and fashion 
 along with his publicized personal life made him a global figure in popular culture for over four decades.", 2009, 1,
 "www.michaeljackson.com", "Gary, Indiana, U.S.");


INSERT INTO flytjandi(nafn, faedingardagur, lysing, danardagur, tegund_flytjanda, vefsida, uppruni)
VALUES 
 ("Dire Straits", 1977, "Dire Straits were a British rock band that formed in 
 Deptford, London, in 1977 by Mark Knopfler (lead vocals and lead guitar), his younger brother David Knopfler (rhythm guitar and backing vocals),
 John Illsley (bass guitar and backing vocals), and Pick Withers (drums and percussion).", null, 2, "www.markknopfler.com", "London, England, UK"); 
 
 
 
 
 

INSERT INTO diskur(nafn, utgafudagur, tegund_disks, tilnefningar, utgefandi)
VALUES
("Led Zeppelin IV", 1971, 3, null, 3);
INSERT INTO diskur(nafn, utgafudagur, tegund_disks, tilnefningar, utgefandi)
VALUES
("The Eminem Show", 2002, 5, "Grammy Awards 2003", 6);
INSERT INTO diskur(nafn, utgafudagur, tegund_disks, tilnefningar, utgefandi)
VALUES
("Master of Puppets", 1986, 1, "MTV Video Music Awards", 2);
INSERT INTO diskur(nafn, utgafudagur, tegund_disks, tilnefningar, utgefandi)
VALUES
("Art Of Motion", 2005, 7, null, 6);
INSERT INTO diskur(nafn, utgafudagur, tegund_disks, tilnefningar, utgefandi)
VALUES
("Far Wes", 1958, 4, null, 3); -- elsti flytjandi
INSERT INTO diskur(nafn, utgafudagur, tegund_disks, tilnefningar, utgefandi)
VALUES
("Brother in Arms", 1985, 3, "MTV Music Awards", 4);
INSERT INTO diskur(nafn, utgafudagur, tegund_disks, tilnefningar, utgefandi)
VALUES
("Thriller", 1982, 2, "World Music Awards", 4);
INSERT INTO diskur(nafn, utgafudagur, tegund_disks, tilnefningar, utgefandi)
VALUES
("Tubular Bells", 1973, 6, "2010 Sydney Fringe Festival", 1);
INSERT INTO diskur(nafn, utgafudagur, tegund_disks, tilnefningar, utgefandi)
VALUES
("Album Title Goes Here", 2012, 7, null , 8);

INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("Stairway To Heaven", 
475, -- 7:55 
"There's a lady who's sure all that glitters is gold
And she's buying a stairway to heaven.
When she gets there she knows, if the stores are all closed
With a word she can get what she came for.
Ooh, ooh, and she's buying a stairway to heaven.

There's a sign on the wall but she wants to be sure
'Cause you know sometimes words have two meanings.
In a tree by the brook, there's a songbird who sings,
Sometimes all of our thoughts are misgiven.

Ooh, it makes me wonder,
Ooh, it makes me wonder.

There's a feeling I get when I look to the west,
And my spirit is crying for leaving.
In my thoughts I have seen rings of smoke through the trees,
And the voices of those who stand looking.

Ooh, it makes me wonder,
Ooh, it really makes me wonder.

And it's whispered that soon, if we all call the tune,
Then the piper will lead us to reason.
And a new day will dawn for those who stand long,
And the forests will echo with laughter.

If there's a bustle in your hedgerow, don't be alarmed now,
It's just a spring clean for the May queen.
Yes, there are two paths you can go by, but in the long run
There's still time to change the road you're on.
And it makes me wonder.

Your head is humming and it won't go, in case you don't know,
The piper's calling you to join him,
Dear lady, can you hear the wind blow, and did you know
Your stairway lies on the whispering wind?

And as we wind on down the road
Our shadows taller than our soul.
There walks a lady we all know
Who shines white light and wants to show
How everything still turns to gold.
And if you listen very hard
The tune will come to you at last.
When all are one and one is all
To be a rock and not to roll.

And she's buying a stairway to heaven.", 2, 1, 1, 3);


INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("Black Dog", 295 -- 4:55
,"Hey, hey mama, said the way you move,
Gonna make you sweat, gonna make you groove.

Uh uh child, way you shake that thing,
Gonna make you burn, gonna make you sting.

Hey, hey, baby, when you walk that way,
Watch your honey drip, can't keep away.

Ah, yeah, ah, yeah, ah, ah, ah, ah, yeah, ah, yeah, ah, ah, ah.

I gotta roll, can't stand still,
Got a flamin' heart, can't get my fill.

Eyes that shine, burnin' red,
Dreams of you all through my head.

Ah, ah, ah, ah, ah, ah, ah, ah, ah, ah, ah, ah, ah.

Hey hey, baby, oh, baby, pretty baby,
Darlin' can't you do me now?

Hey, baby, oh, baby, pretty baby,
Move me while you do me now.

Didn't take too long 'fore I found out
What people mean by down and out.

Spent my money, took my car,
Started tellin' her friends she gonna be a star.

I don't know, but I been told,
A big legged woman ain't got no soul.

Oh, yeah, oh, yeah, ah, ah, ah, oh, yeah, oh, yeah, ah, ah, yeah.

All I ask for, all I pray,
Steady-loaded woman gonna come my way.

Need a woman, gonna hold my hand
Will tell me no lies, make me a happy man.

Ah, ah, ah, ah, ah, ah, ah, ah, ah, ah, ah, ah, ah.

La-da ah e ah

Yes I will. And, yes, I really, really do, baby, baby, baby.

I can really do you, huh? Ooh, wew, you do it, baby.
Push it, baby, push it, baby, push it, baby, push it, baby,
Push it, baby, push it, babe, babe.
Ooh, ooh, aah ooh. Ooh. I'd really like to do it now. I'd really like to do it now." , 2, 1, 1, 3);


INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("Going to California", 216 -- 3:36
, 
"Spent my days with a woman unkind, Smoked my stuff and drank all my wine. 
Made up my mind to make a new start, Going To California with an aching in my heart. 
Someone told me there's a girl out there with love in her eyes and flowers in her hair. 
Took my chances on a big jet plane, never let them tell you that they're all the same. 
The sea was red and the sky was grey, wondered how tomorrow could ever follow today. 
The mountains and the canyons started to tremble and shake 
as the children of the sun began to awake. 

Seems that the wrath of the Gods 
Got a punch on the nose and it started to flow; 
I think I might be sinking. 
Throw me a line if I reach it in time 
I'll meet you up there where the path 
Runs straight and high. 

To find a queen without a king, 
They say she plays guitar and cries and sings... la la la 
Ride a white mare in the footsteps of dawn 
Tryin' to find a woman who's never, never, never been born. 
Standing on a hill in my mountain of dreams, 
Telling myself it's not as hard, hard, hard as it seems.", 2, 1, 1, 3);


INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("Rock and Roll", 220 -- 3:40
,
"It's been a long time since I Rock and Rolled,
It's been a long time since I did the Stroll.
Ooh, let me get it back, let me get it back,
Let me get it back, baby, where I come from.
It's been a long time, been a long time,
Been a long lonely, lonely, lonely, lonely, lonely time.
Yes it has.

It's been a long time since the book of love,
I can't count the tears of a life with no love.
Carry me back, carry me back,
Carry me back, baby, where I come from.
It's been a long time, been a long time,
Been a long lonely, lonely, lonely, lonely, lonely time.

Seems so long since we walked in the moonlight,
Making vows that just can't work right.
Open your arms, opens your arms,
Open your arms, baby, let my love come running in.
It's been a long time, been a long time,
Been a long lonely, lonely, lonely, lonely, lonely time.", 2, 1, 1, 3);


INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("Tubular Bells, Pt.1", 1536 -- 25:36
, null, 3, 8, 2, 6),

("Tubular Bells, Pt.2", 1400 -- 23:20
, null, 3, 8, 2, 6);

INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("Cleaning Out My Closet", 297 -- 4:57
, 
"[Intro]
Where's my snare?
I have no snare in my headphones
There you go, yeah, yo, yo

[Verse 1]
Have you ever been hated or discriminated against?
I have; I've been protested and demonstrated against
Picket signs for my wicked rhymes, look at the times
Sick as the mind of the motherfuckin' kid that's behind
All this commotion, emotions run deep as oceans
Explodin', tempers flarin' from parents
Just blow 'em off and keep goin'
Not takin' nothin' from no one
Give 'em hell long as I'm breathin'
Keep kickin' ass in the morning
And takin' names in the evenin'
Leave 'em with a taste as sour as vinegar in they mouth
See, they can trigger me, but they'll never figure me out
Look at me now! I bet you're probably sick of me now
Ain't you, Momma? I'ma make you look so ridiculous now

[Hook]
I'm sorry, Momma, I never meant to hurt you
I never meant to make you cry
But tonight I'm cleanin' out my closet
(One more time!)
I said I'm sorry, Momma, I never meant to hurt you
I never meant to make you cry
But tonight I'm cleanin' out my closet

[Verse 2]
I got some skeletons in my closet
And I don't know if no one knows it
So before they throw me inside my coffin and close it
I'ma expose it; I'll take you back to '73
Before I ever had a multi-platinum-selling CD
I was a baby, maybe I was just a couple of months
My faggot father must have had his panties up in a bunch
‘Cause he split, I wonder if he even kissed me goodbye
No, I don't, on second thought
I just fuckin' wished he would die
I look at Hailie, and I couldn't picture leavin' her side
Even if I hated Kim, I'd grit my teeth and I'd try
To make it work with her at least for Hailie's sake
I maybe made some mistakes
But I'm only human, but I'm man enough to face 'em today
What I did was stupid, no doubt it was dumb
But the smartest shit I did was take the bullets out of that gun, ‘cause I'da killed him
Shit, I would've shot Kim and him both
It's my life, I'd like to welcome y'all to The Eminem Show

[Hook]
I'm sorry, Momma, I never meant to hurt you
I never meant to make you cry
But tonight I'm cleanin' out my closet
(One more time!)
I said I'm sorry, Momma, I never meant to hurt you
I never meant to make you cry
But tonight I'm cleanin' out my closet

[Verse 3]
Now, I would never diss my own momma just to get recognition; take a second to listen
'Fore you think this record is dissin'
But put yourself in my position
Just try to envision, witnessin' your momma poppin' prescription pills in the kitchen
Bitchin' that someone's always goin' through her purse and shit's missin', goin' through public housing systems
Victim of Münchausen's Syndrome
My whole life I was made to believe I was sick when I wasn't
'Til I grew up, now I blew up
It makes you sick to your stomach, doesn't it?
Wasn't it the reason you made that CD for me, ma?
So you could try to justify the way you treated me, ma?
But guess what, you're gettin' older now
And it's cold when you're lonely
And Nathan's growin' up so quick
He's gonna know that you're phony
And Hailie's gettin' so big now
You should see her, she's beautiful
But you'll never see her—she won't even be at your funeral!
See, what hurts me the most is you won't admit you was wrong, bitch, do your song
Keep tellin' yourself that you was a mom!
But how dare you try to take what you didn't help me to get?
You selfish bitch; I hope you fuckin' burn in hell for this shit
Remember when Ronnie died
And you said you wished it was me?
Well, guess what, I am dead—dead to you as can be!

[Hook]
I'm sorry, Momma, I never meant to hurt you
I never meant to make you cry
But tonight I'm cleanin' out my closet
(One more time!)
I said I'm sorry, Momma, I never meant to hurt you
I never meant to make you cry
But tonight I'm cleanin' out my closet", 1, 2, 3, 5);


INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("White America", 324 -- 5:24
, "[Intro]
America! Ha ha ha! We love you
How many people are proud to be citizens
Of this beautiful country of ours, the stripes and the stars
For the rights that men have died for to protect?
The women and men who have broke their necks
For the freedom of speech the United States government has sworn to uphold… Or so we're told
(Yo, I want everybody to listen to the words of this song)

[Verse 1]
I never woulda dreamed in a million years I'd see
So many motherfuckin' people who feel like me
Who share the same views and the same exact beliefs
It's like a fuckin' army marchin' in back of me
So many lives I touched, so much anger aimed
In no particular direction, just sprays and sprays
And straight through your radio waves, it plays and plays
'Til it stays stuck in your head, for days and days
Who woulda thought, standin' in this mirror
Bleachin' my hair, with some peroxide
Reachin' for a t-shirt to wear
That I would catapult to the forefront of Rap like this?
How could I predict my words
Would have an impact like this?
I musta struck a chord with somebody up in the office
'Cause Congress keep tellin' me
I ain't causin' nothin' but problems
And now they're sayin' I'm in trouble with the government
I'm lovin' it, I shoveled shit all my life
And now I'm dumpin' it on…

[Hook]
White America, I could be one of your kids
White America, little Eric looks just like this
White America, Erica loves my shit
I go to TRL, look how many hugs I get!
White America, I could be one of your kids
White America, little Eric looks just like this
White America, Erica loves my shit
I go to TRL, look how many hugs I get!

[Verse 2]
Look at these eyes, baby blue, baby just like yourself
If they were brown, Shady'd lose, Shady sits on the shelf
But Shady's cute, Shady knew Shady's dimples would help
Make ladies swoon, baby (ooh, baby!) – look at my sales!
Let's do the math if I was black, I woulda sold half; I ain't have to graduate from Lincoln High School to know that
But I could rap, so fuck school, I'm too cool to go back
Give me the mic! Show me where the fuckin' studio's at!
When I was underground no one gave a fuck I was white
No labels wanted to sign me, almost gave up, I was like
Fuck it, until I met Dre, the only one to look past
Gave me a chance and I lit a fire up under his ass
Helped him get back to the top
Every fan black that I got was probably his in exchange for every white fan that he's got
Like, damn, we just swapped sittin' back lookin' at shit, wow
I'm like my skin is just startin' to work to my benefit now?

[Hook]
White America, I could be one of your kids
White America, little Eric looks just like this
White America, Erica loves my shit
I go to TRL, look how many hugs I get!
White America, I could be one of your kids
White America, little Eric looks just like this
White America, Erica loves my shit
I go to TRL, look how many hugs I get!

[Verse 3]
See, the problem is, I speak to suburban kids
Who otherwise woulda never knew these words exist
Whose moms probly woulda never gave two squirts of piss
'Til I created so much motherfuckin' turbulence
Straight out the tube, right into your livin' rooms I came
And kids flipped when they knew I was produced by Dre
That's all it took, and they were instantly hooked right in
And they connected with me too, because I looked like them
That's why they put my lyrics up under this microscope
Searchin' with a fine tooth comb, it's like this rope
Waitin' to choke, tightenin' around my throat
Watchin' me while I write this, like, I don't like this note!
All I hear is lyrics, lyrics, constant controversy, sponsors working round the clock to try to stop my concerts early
Surely hiphop was never a problem in Harlem, only in Boston
After it bothered the fathers of daughters startin' to blossom
So now I'm catchin' the flak from these activists
When they raggin', actin' like I'm the first rapper
To smack a bitch or say faggot, shit
Just look at me like I'm your closest pal
The posterchild, the motherfuckin' spokesman now, for…

[Hook]
White America, I could be one of your kids
White America, little Eric looks just like this
White America, Erica loves my shit
I go to TRL, look how many hugs I get!
White America, I could be one of your kids
White America, little Eric looks just like this
White America, Erica loves my shit
I go to TRL, look how many hugs I get!

[Outro]
So to the parents of America, I am the Deringer
Aimed at little Erica to attack her character
The ringleader of this circus of worthless pawns
Sent to lead the march right up to the steps of Congress
And piss on the lawns of the White House
To burn the ​​flag​​ and replace it
With a Parental Advisory sticker
To spit liquor in the faces of this democracy of hypocrisy
Fuck you, Ms. Cheney! Fuck you, Tipper Gore!
Fuck you with the freest of speech this Divided States of Embarrassment will allow me to have! Fuck you!

Ha ha ha, I'm just playin', America
You know I love you", 1, 2, 3, 5);

INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("Far Wes", 351 -- 5:51
, null, 1, 5, 4, 4),

("Leila", 208 -- 3:28
, null, 1, 5, 4, 4),

("Wes Tune", 248 -- 4:08
, null, 1, 5, 4, 4),

("Monks Shop", 234 -- 3:54
, null, 1, 5, 4, 4),

("Montgomeryland Funk", 240 -- 4:06
, null, 1, 5, 4, 4);

INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("Master of Puppets", 516 -- 8:36
, "End of passion play, crumbling away
I’m your source of self-destruction
Veins that pump with fear, sucking darkest clear
Leading on your death’s construction
Taste me you will see
More is all you need
You’re dedicated to
How I’m killing you

Come crawling faster
Obey your master
Your life burns faster
Obey your master
Master

Master of puppets I’m pulling your strings
Twisting your mind and smashing your dreams
Blinded by me, you can’t see a thing
Just call my name, ‘cause I’ll hear you scream
Master
Master
Just call my name, ‘cause I’ll hear you scream
Master
Master

Needlework the way, never you betray
Life of death becoming clearer
Pain monopoly, ritual misery
Chop your breakfast on a mirror
Taste me you will see
More is all you need
You’re dedicated to
How I’m killing you

Come crawling faster
Obey your master
Your life burns faster
Obey your master
Master

Master of puppets I’m pulling your strings
Twisting your mind and smashing your dreams
Blinded by me, you can’t see a thing
Just call my name, ‘cause I’ll hear you scream
Master
Master
Just call my name, ‘cause I’ll hear you scream
Master
Master

Master, master
Where’s the dreams that I’ve been after?
Master, master
You promised only lies
Laughter, laughter
All I hear or see is laughter
Laughter, laughter
Laughing at my cries

Fix me

Hell is worth all that, natural habitat
Just a rhyme without a reason
Never-ending maze, drift on numbered days
Now your life is out of season
I will occupy
I will help you die
I will run through you
Now I rule you too

Come crawling faster
Obey your master
Your life burns faster
Obey your master
Master

Master of puppets I’m pulling your strings
Twisting your mind and smashing your dreams
Blinded by me, you can’t see a thing
Just call my name, ‘cause I’ll hear you scream
Master
Master
Just call my name, ‘cause I’ll hear you scream
Master
Master
", 2, 3, 5, 1);

INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("Battery", 326 -- 5:26
, "Lashing out the action, returning the reaction
Weak are ripped and torn away
Hypnotizing power, crushing all that cower
Battery is here to stay

Smashing through the boundaries
Lunacy has found me
Cannot stop the battery
Pounding out aggression
Turns into obsession
Cannot kill the battery

Cannot kill the family
Battery is found in me

Battery
Battery

Crushing all deceivers, mashing non-believers
Never-ending potency
Hungry violence-seeker, feeding off the weaker
Breeding on insanity

Smashing through the boundaries
Lunacy has found me
Cannot stop the battery
Pounding out aggression
Turns into obsession
Cannot kill the battery

Cannot kill the family
Battery is found in me

Battery
Battery

Circle of destruction, hammer comes crushing
Powerhouse of energy
Whipping up a fury, dominating flurry
We create the battery

Smashing through the boundaries
Lunacy has found me
Cannot stop the battery
Pounding out aggression
Turns into obsession
Cannot kill the battery

Cannot kill the family
Battery is found in me

Battery 
Battery
Battery
Battery
", 2, 3, 5, 1);

INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("Drifting", 191 -- 3:11
, null, 1, 4, 6, 7),

("Nocturne", 193 -- 3:13
, null, 1, 4, 6, 7),

("Fn Pig", 541 -- 9:01
, null, 1, 9, 7, 8);

INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("Thriller", 357 -- 5:57
, "It's close to midnight and something evil's lurking in the dark
Under the moonlight you see a sight that almost stops your heart
You try to scream but terror takes the sound before you make it
You start to freeze as horror looks you right between the eyes,
You're paralyzed

'Cause this is thriller, thriller night
And no one's gonna save you from the beast about to strike
You know it's thriller, thriller night
You're fighting for your life inside a killer, thriller tonight

You hear the door slam and realize there's nowhere left to run
You feel the cold hand and wonder if you'll ever see the sun
You close your eyes and hope that this is just imagination
But all the while you hear the creature creepin' up behind
You're out of time

'Cause this is thriller, thriller night
There ain't no second chance against the thing with forty eyes
You know it's thriller, thriller night
You're fighting for your life inside a killer, thriller tonight

Night creatures call
And the dead start to walk in their masquerade
There's no escapin' the jaws of the alien this time (they're open wide)
This is the end of your life

They're out to get you, there's demons closing in on every side
They will possess you unless you change that number on your dial
Now is the time for you and I to cuddle close together
All thru the night I'll save you from the terror on the screen,
I'll make you see

That it's a thriller, thriller night
'Cause I can thrill you more than any ghost would dare to try
Girl, this is thriller, thriller night
So let me hold you tight and share a killer, diller, chiller
Thriller here tonight

That it's a thriller, thriller night
'Cause I can thrill you more than any ghost would dare to try
Girl, this is thriller, thriller night
So let me hold you tight and share a killer, diller

I'm gonna be tonight

[Vincent Price]
Darkness falls across the land
The midnite hour is close at hand
Creatures crawl in search of blood
To terrorize y'awl's neighborhood
And whosoever shall be found
Without the soul for getting down
Must stand and face the hounds of hell
And rot inside a corpse's shell
The foulest stench is in the air
The funk of forty thousand years
And grizzly ghouls from every tomb
Are closing in to seal your doom
And though you fight to stay alive
Your body starts to shiver
For no mere mortal can resist
The evil of the thriller
", 1, 7, 8, 2);

INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("Beat it", 258 -- 4:18
, "They told him, Don't you ever come around here.
Don't wanna see your face. You better disappear.
The fire's in their eyes and their words are really clear
So beat it, just beat it

You better run, you better do what you can
Don't wanna see no blood, don't be a macho man
You wanna be tough, better do what you can
So beat it, but you wanna be bad

[Chorus]
Just beat it, beat it, beat it, beat it
No one wants to be defeated
Showin' how funky strong is your fight
It doesn't matter who's wrong or right

Just beat it, beat it [4x]

They're out to get you, better leave while you can
Don't wanna be a boy, you wanna be a man
You wanna stay alive, better do what you can
So beat it, just beat it

You have to show them that you're really not scared
You're playin' with your life, this ain't no truth or dare
They'll kick you, then they beat you, then they'll tell you it's fair
So beat it, but you wanna be bad

[Chorus 2x]
Just beat it, beat it, beat it, beat it
No one wants to be defeated
Showin' how funky strong is your fight
It doesn't matter who's wrong or right

Just beat it, beat it, beat it, beat it, beat it

Beat it, beat it, beat it, beat it
No one wants to be defeated
Showin' how funky strong is your fight
It doesn't matter who's wrong or right

[Chorus 3x]
Just beat it, beat it, beat it, beat it
No one wants to be defeated
Showin' how funky strong is your fight
It doesn't matter who's wrong or right

Just beat it, beat it
Beat it, beat it, beat it", 1, 7, 8, 2);


INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("Money for Nothing", 506 -- 8:26
, "Now look at them yo-yo's that's the way you do it
You play the guitar on the MTV
That ain't workin' that's the way you do it
Money for nothin' and chicks for free
Now that ain't workin' that's the way you do it
Lemme tell ya them guys ain't dumb
Maybe get a blister on your little finger
Maybe get a blister on your thumb

We gotta install microwave ovens
Custom kitchen deliveries
We gotta move these refrigerators
We gotta move these colour TV's

See the little faggot with the earring and the makeup
Yeah buddy that's his own hair
That little faggot got his own jet airplane
That little faggot he's a millionaire

We gotta install microwave ovens
Custom kitchens deliveries
We gotta move these refrigerators
We gotta move these colour TV's

I shoulda learned to play the guitar
I shoulda learned to play them drums
Look at that mama, she got it stickin' in the camera
Man we could have some fun
And he's up there, what's that? Hawaiian noises?
Bangin' on the bongoes like a chimpanzee
That ain't workin' that's the way you do it
Get your money for nothin' get your chicks for free

We gotta install microwave ovens
Custom kitchen deliveries
We gotta move these refrigerators
We gotta move these colour TV's, Lord

Now that ain't workin' that's the way you do it
You play the guitar on the MTV
That ain't workin' that's the way you do it
Money for nothin' and your chicks for free
Money for nothin' and chicks for free", 2, 6, 9, 3);


INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("Walk of Life", 252 -- 4:12
, "Here comes Johnny singing oldies, goldies
Be-Bop-A-Lula, Baby What I Say
Here comes Johnny singing I Gotta Woman
Down in the tunnels, trying to make it pay

He got the action, he got the motion
Yeah, the boy can play
Dedication, devotion
Turning all the night time into the day

He do the song about the sweet lovin' woman
He do the song about the knife
He do the walk, he do the walk of life

Here comes Johnny and he'll tell you the story
Hand me down my walkin' shoes
Here comes Johnny with the power and the glory
Backbeat the talkin' blues

He got the action, he got the motion
Yeah, the boy can play
Dedication, devotion
Turning all the night time into the day

He do the song about the sweet lovin' woman
He do the song about the knife
He do the walk, he do the walk of life

Here comes Johnny singing oldies, goldies
Be-Bop-A-Lula, Baby What I Say
Here comes Johnny singing I Gotta Woman
Down in the tunnels, trying to make it pay

He got the action, he got the motion
Yeah the boy can play
Dedication, devotion
Turning all the night time into the day

And after all the violence and double talk
There's just a song in all the trouble and the strife
You do the walk, you do the walk of life", 2, 6, 9, 3);


INSERT INTO lag(nafn, lengd, texti, flokkur, diskur, flytjandi, tegund)
VALUES
("Brothers in Arms", 420 -- 7:00
, "These mist-covered mountains
Are a home now for me
But my home is the lowlands
And always will be
Some day you'll return to
Your valleys and your farms
And you'll no longer burn
To be brothers in arms

Through these fields of destruction
Baptisms of fire
I've witnessed your suffering
As the battle raged high
And though they did hurt me so bad
In the fear and alarm
You did not desert me
My brothers in arms

There's so many different worlds
So many different suns
And we have just one world
But we live in different ones

Now the sun's gone to hell
And the moon riding high
Let me bid you farewell
Every man has to die
But it's written in the starlight
And every line in your palm
We're fools to make war
On our brothers in arms", 2, 6, 9, 3);

SELECT diskur.nafn as Diskur, lag.nafn FROM lag JOIN diskur WHERE diskur.nafn = "Far Wes" and diskur.id = lag.diskur; -- a

SELECT flytjandi.nafn as Flytjandi, lag.nafn FROM lag JOIN flytjandi WHERE flytjandi.nafn = "Andy Mckee" and flytjandi.id = lag.flytjandi; -- b

SELECT lag.nafn as Lag, tegund.nafn as Tegund FROM lag JOIN tegund WHERE tegund.nafn = "Rock" and tegund.id = lag.tegund; -- c

SELECT nafn as Lag, sec_to_time(lengd) as Duration FROM lag WHERE sec_to_time(lengd) > sec_to_time(300); -- d

SELECT nafn, utgafudagur FROM diskur WHERE utgafudagur > 2010; -- e

SELECT flytjandi.nafn, lag.nafn, sec_to_time(max(lag.lengd)) as duration, utgefandi.nafn 
FROM lag
JOIN flytjandi ON lag.id = flytjandi.id
JOIN utgefandi ON utgefandi.id = lag.id
ORDER BY max(lag.lengd) DESC LIMIT 5; -- g

SELECT tegund.nafn as tegund, count(diskur.nafn) as diskar FROM tegund JOIN diskur ON diskur.id = tegund.id; -- h

SELECT diskur.nafn as diskur, tegund.nafn as tegund,diskur.utgafudagur as útgáfudagur ,utgefandi.nafn as útgefandi
FROM utgefandi
JOIN tegund ON tegund.id = utgefandi.id
JOIN diskur ON diskur.id = utgefandi.id
WHERE diskur.utgafudagur >= 1998 OR diskur.utgafudagur <= 2017
GROUP BY utgefandi; -- j



DROP TABLE flokkur,tegund,utgefandi,diskur,lag, flytjandi;