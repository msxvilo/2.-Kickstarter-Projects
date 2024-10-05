# Kickstarter Projects Analysis

This repository contains an analysis of Kickstarter projects data.
SQL queries? Check them out here: [sql_query folder](/sql_query/)
# Background
### The analysis focused on answering the following questions:

1. What percentage of projects in each category were successful?

2. Which country had the highest number of successful projects?

3. What is the average pledged amount for successful projects in each category?

4. What is the success rate of projects launched in different years?

# Tools I Used
The following tools were used in this analysis:

- **SQL:** SQL is the industry-standard language for managing and manipulating relational databases. SQL allowing me to query the database and unearth critical insights.

- **PostgreSQL:** PostgreSQL is a powerful, open-source database system. this database is ideal for handling given data

- **Visual Studio Code (VS Code):** VS code is a free, lightweight, and highly customizable code editor. It supports a wide range of programming languages and Git integration.   


- **Git & GitHub:** Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and
project tracking.

**Additional Thoughts**

- The combination of tools you used represents a modern and effective approach to data analysis. SQL and PostgreSQL provide the foundation for data management and querying, while VS Code offer a productive coding environment. Git and GitHub enable efficient version control and collaboration.
# The Analysis
Each query for this project aimed at investigating specific aspects of the kickstarters.
Here's ho I approached each question:

### 1. What percentage of projects in each category were successful?

```sql
SELECT 
    category, 
    COUNT(*) AS total_projects, 
    SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) AS successful_projects,
    ROUND((SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)), 0) AS success_rate_percentage
FROM 
    kickstarter_projects
GROUP BY 
    category
ORDER BY 
    success_rate_percentage DESC;
```
Here is the output that I get after querying database

| category           | total_projects   | successful_projects   | success_rate_percentage   |
|:-------------------|:-----------------|:----------------------|:--------------------------|
| Chiptune           | 35               | 27                    | 77                        |
| Residencies        | 69               | 50                    | 72                        |
| Anthologies        | 784              | 521                   | 66                        |
| Dance              | 2322             | 1542                  | 66                        |
| Indie Rock         | 5657             | 3618                  | 64                        |
| Country & Folk     | 4451             | 2812                  | 63                        |
| Classical Music    | 2613             | 1647                  | 63                        |
| Letterpress        | 49               | 31                    | 63                        |
| Performances       | 1013             | 624                   | 62                        |
| Theater            | 7057             | 4405                  | 62                        |
| Jazz               | 1850             | 1104                  | 60                        |
| Comic Books        | 2743             | 1614                  | 59                        |
| Typography         | 108              | 63                    | 58                        |
| Plays              | 1378             | 804                   | 58                        |
| Webcomics          | 648              | 358                   | 55                        |
| Tabletop Games     | 14180            | 7866                  | 55                        |
| Graphic Novels     | 1864             | 1011                  | 54                        |
| Festivals          | 839              | 457                   | 54                        |
| Shorts             | 12357            | 6673                  | 54                        |
| Rock               | 6758             | 3500                  | 52                        |
| Art Books          | 2676             | 1356                  | 51                        |
| Musical            | 913              | 462                   | 51                        |
| Illustration       | 3175             | 1626                  | 51                        |
| Immersive          | 330              | 169                   | 51                        |
| Comics             | 4996             | 2506                  | 50                        |
| Public Art         | 3077             | 1543                  | 50                        |
| Literary Spaces    | 27               | 13                    | 48                        |
| Literary Journals  | 278              | 133                   | 48                        |
| Installations      | 482              | 233                   | 48                        |
| Knitting           | 181              | 85                    | 47                        |
| Pop                | 3350             | 1561                  | 47                        |
| DIY Electronics    | 902              | 417                   | 46                        |
| Camera Equipment   | 416              | 192                   | 46                        |
| Punk               | 317              | 146                   | 46                        |
| Zines              | 391              | 179                   | 46                        |
| World Music        | 2102             | 922                   | 44                        |
| Blues              | 268              | 117                   | 44                        |
| Pottery            | 100              | 44                    | 44                        |
| Kids               | 285              | 126                   | 44                        |
| Radio & Podcasts   | 923              | 394                   | 43                        |
| Ceramics           | 305              | 132                   | 43                        |
| Performance Art    | 2154             | 934                   | 43                        |
| Faith              | 1092             | 456                   | 42                        |
| Art                | 8253             | 3385                  | 41                        |
| Sound              | 669              | 274                   | 41                        |
| Periodicals        | 1265             | 515                   | 41                        |
| Music              | 15727            | 6432                  | 41                        |
| Robots             | 572              | 226                   | 40                        |
| Photobooks         | 1580             | 635                   | 40                        |
| Experimental       | 924              | 358                   | 39                        |
| Comedy             | 2320             | 912                   | 39                        |
| Sculpture          | 1810             | 698                   | 39                        |
| Calendars          | 329              | 128                   | 39                        |
| Playing Cards      | 2497             | 967                   | 39                        |
| Narrative Film     | 5188             | 2013                  | 39                        |
| Metal              | 717              | 275                   | 38                        |
| Taxidermy          | 13               | 5                     | 38                        |
| Puzzles            | 231              | 88                    | 38                        |
| Science Fiction    | 744              | 272                   | 37                        |
| Drama              | 2179             | 812                   | 37                        |
| Graphic Design     | 2002             | 750                   | 37                        |
| Documentary        | 16139            | 5924                  | 37                        |
| Space Exploration  | 323              | 120                   | 37                        |
| Civic Design       | 289              | 104                   | 36                        |
| Conceptual Art     | 1030             | 366                   | 36                        |
| Fine Art           | 776              | 283                   | 36                        |
| Poetry             | 1369             | 487                   | 36                        |
| Product Design     | 22314            | 7962                  | 36                        |
| 3D Printing        | 683              | 242                   | 35                        |
| Children's Books   | 6756             | 2348                  | 35                        |
| Painting           | 3294             | 1149                  | 35                        |
| Spaces             | 841              | 295                   | 35                        |
| Stationery         | 219              | 77                    | 35                        |
| Mixed Media        | 2757             | 945                   | 34                        |
| Music Videos       | 709              | 240                   | 34                        |
| Accessories        | 3165             | 1073                  | 34                        |
| Design             | 4199             | 1413                  | 34                        |
| Hardware           | 3663             | 1206                  | 33                        |
| Photography        | 5752             | 1876                  | 33                        |
| Electronic Music   | 2170             | 700                   | 32                        |
| Footwear           | 931              | 298                   | 32                        |
| Makerspaces        | 238              | 76                    | 32                        |
| Horror             | 1287             | 397                   | 31                        |
| Vegan              | 588              | 185                   | 31                        |
| Small Batch        | 1808             | 557                   | 31                        |
| Fantasy            | 345              | 106                   | 31                        |
| Wearables          | 1233             | 388                   | 31                        |
| Film & Video       | 10108            | 3070                  | 30                        |
| Workshops          | 164              | 50                    | 30                        |
| Weaving            | 93               | 27                    | 29                        |
| Romance            | 190              | 55                    | 29                        |
| Food               | 11493            | 3297                  | 29                        |
| Webseries          | 5762             | 1698                  | 29                        |
| Gadgets            | 2965             | 827                   | 28                        |
| Digital Art        | 1346             | 371                   | 28                        |
| Textiles           | 276              | 77                    | 28                        |
| Glass              | 138              | 38                    | 28                        |
| Latin              | 137              | 38                    | 28                        |
| Pet Fashion        | 139              | 37                    | 27                        |
| Journalism         | 1747             | 472                   | 27                        |
| Nonfiction         | 8318             | 2230                  | 27                        |
| Thrillers          | 746              | 200                   | 27                        |
| Animation          | 2541             | 682                   | 27                        |
| Publishing         | 6018             | 1640                  | 27                        |
| Audio              | 410              | 111                   | 27                        |
| Fashion            | 8554             | 2188                  | 26                        |
| Video Art          | 194              | 51                    | 26                        |
| Fabrication Tools  | 250              | 66                    | 26                        |
| Drinks             | 2422             | 594                   | 25                        |
| Animals            | 255              | 63                    | 25                        |
| Woodworking        | 1167             | 292                   | 25                        |
| Crafts             | 4664             | 1162                  | 25                        |
| Architecture       | 760              | 179                   | 24                        |
| Games              | 3226             | 779                   | 24                        |
| Jewelry            | 1239             | 301                   | 24                        |
| Cookbooks          | 540              | 130                   | 24                        |
| Fiction            | 9169             | 2233                  | 24                        |
| R&B                | 458              | 107                   | 23                        |
| Translations       | 153              | 35                    | 23                        |
| Gaming Hardware    | 428              | 99                    | 23                        |
| Quilts             | 81               | 19                    | 23                        |
| Community Gardens  | 298              | 66                    | 22                        |
| Movie Theaters     | 232              | 52                    | 22                        |
| Crochet            | 162              | 35                    | 22                        |
| Print              | 727              | 161                   | 22                        |
| Printing           | 238              | 49                    | 21                        |
| Young Adult        | 821              | 172                   | 21                        |
| Farms              | 1154             | 242                   | 21                        |
| Academic           | 916              | 188                   | 21                        |
| People             | 1103             | 230                   | 21                        |
| Family             | 336              | 66                    | 20                        |
| Childrenswear      | 483              | 95                    | 20                        |
| Video Games        | 11830            | 2386                  | 20                        |
| Apparel            | 7166             | 1414                  | 20                        |
| Interactive Design | 398              | 79                    | 20                        |
| Technology         | 6930             | 1317                  | 19                        |
| Events             | 818              | 158                   | 19                        |
| Flight             | 426              | 76                    | 18                        |
| Ready-to-wear      | 864              | 145                   | 17                        |
| Embroidery         | 113              | 19                    | 17                        |
| Bacon              | 221              | 38                    | 17                        |
| Farmer's Markets   | 424              | 70                    | 17                        |
| Live Games         | 1050             | 180                   | 17                        |
| Nature             | 574              | 100                   | 17                        |
| Restaurants        | 2819             | 457                   | 16                        |
| Places             | 739              | 118                   | 16                        |
| Photo              | 196              | 32                    | 16                        |
| DIY                | 1173             | 183                   | 16                        |
| Television         | 1015             | 156                   | 15                        |
| Hip-Hop            | 3912             | 602                   | 15                        |
| Couture            | 275              | 42                    | 15                        |
| Action             | 740              | 107                   | 14                        |
| Candles            | 429              | 55                    | 13                        |
| Video              | 428              | 51                    | 12                        |
| Food Trucks        | 1752             | 217                   | 12                        |
| Software           | 3048             | 371                   | 12                        |
| Mobile Games       | 1789             | 153                   | 9                         |
| Web                | 5153             | 443                   | 9                         |
| Apps               | 6345             | 378                   | 6                         |

### 2. Which country had the highest number of successful projects?

```sql
SELECT 
    COUNT(*) AS counted,
    country
FROM 
    kickstarter_projects
GROUP BY 
    country
ORDER BY
    counted DESC;
```

| counted   | country   |
|:----------|:----------|
| 292627    | US        |
| 33672     | GB        |
| 14756     | CA        |
| 7839      | AU        |
| 4171      | DE        |
| 3797      | N,0"      |
| 2939      | FR        |
| 2878      | IT        |
| 2868      | NL        |
| 2276      | ES        |
| 1757      | SE        |
| 1752      | MX        |
| 1447      | NZ        |
| 1113      | DK        |
| 811       | IE        |
| 761       | CH        |
| 708       | NO        |
| 618       | HK        |
| 617       | BE        |
| 597       | AT        |
| 555       | SG        |
| 62        | LU        |
| 40        | JP        |

### 3. What is the average pledged amount for successful projects in each category?

```sql
SELECT 
    category,
    ROUND(AVG(pledged),2) AS avg_pleged
FROM 
    kickstarter_projects
WHERE state = 'successful'
GROUP BY 
    category;

```

| category           | avg_pleged   |
|:-------------------|:-------------|
| 3D Printing        | 184708       |
| Academic           | 16325.7      |
| Accessories        | 21186.8      |
| Action             | 17842.4      |
| Animals            | 9118.39      |
| Animation          | 32097.2      |
| Anthologies        | 16347.3      |
| Apparel            | 28722.9      |
| Apps               | 19562.2      |
| Architecture       | 22662.5      |
| Art                | 8911.73      |
| Art Books          | 17208        |
| Audio              | 21224.9      |
| Bacon              | 6209.98      |
| Blues              | 9288.5       |
| Calendars          | 10125.8      |
| Camera Equipment   | 173270       |
| Candles            | 3662.39      |
| Ceramics           | 11612.7      |
| Children's Books   | 9202.83      |
| Childrenswear      | 25483.8      |
| Chiptune           | 22026.4      |
| Civic Design       | 25483.7      |
| Classical Music    | 6831.69      |
| Comedy             | 14135.1      |
| Comic Books        | 5416.89      |
| Comics             | 12272.2      |
| Community Gardens  | 5390.05      |
| Conceptual Art     | 3675.92      |
| Cookbooks          | 21281.8      |
| Country & Folk     | 7112.24      |
| Couture            | 14973.2      |
| Crafts             | 6887.76      |
| Crochet            | 1141.7       |
| Dance              | 5081.82      |
| Design             | 50871.5      |
| Digital Art        | 8229.76      |
| DIY                | 4908.58      |
| DIY Electronics    | 48990.6      |
| Documentary        | 20559.6      |
| Drama              | 11588.8      |
| Drinks             | 22331.7      |
| Electronic Music   | 8028.27      |
| Embroidery         | 24896.7      |
| Events             | 8577.33      |
| Experimental       | 5455.7       |
| Fabrication Tools  | 170929       |
| Faith              | 9838.28      |
| Family             | 21585.6      |
| Fantasy            | 26522.3      |
| Farmer's Markets   | 15692.9      |
| Farms              | 20310.6      |
| Fashion            | 18583.7      |
| Festivals          | 5925.36      |
| Fiction            | 5020.53      |
| Film & Video       | 12242.2      |
| Fine Art           | 5904.38      |
| Flight             | 131518       |
| Food               | 18325.1      |
| Food Trucks        | 12512.4      |
| Footwear           | 55961.3      |
| Gadgets            | 101888       |
| Games              | 24780.3      |
| Gaming Hardware    | 164793       |
| Glass              | 4096.21      |
| Graphic Design     | 13159.1      |
| Graphic Novels     | 14826.7      |
| Hardware           | 118866       |
| Hip-Hop            | 6673.34      |
| Horror             | 12726.6      |
| Illustration       | 8457.97      |
| Immersive          | 8361.24      |
| Indie Rock         | 5746.04      |
| Installations      | 8730.46      |
| Interactive Design | 23954.8      |
| Jazz               | 7470.42      |
| Jewelry            | 10327.7      |
| Journalism         | 12083.9      |
| Kids               | 9015.86      |
| Knitting           | 8376.91      |
| Latin              | 8685.11      |
| Letterpress        | 14972.1      |
| Literary Journals  | 6628.37      |
| Literary Spaces    | 16426.5      |
| Live Games         | 10661.2      |
| Makerspaces        | 16650.6      |
| Metal              | 6323.7       |
| Mixed Media        | 7293.73      |
| Mobile Games       | 11684.8      |
| Movie Theaters     | 67527.1      |
| Music              | 9205.12      |
| Music Videos       | 6980.17      |
| Musical            | 8622.53      |
| Narrative Film     | 22050.6      |
| Nature             | 8784.64      |
| Nonfiction         | 10302.1      |
| Painting           | 4903.19      |
| People             | 7716.37      |
| Performance Art    | 4606.92      |
| Performances       | 5665.72      |
| Periodicals        | 13642.6      |
| Pet Fashion        | 9306.3       |
| Photo              | 9016.38      |
| Photobooks         | 17796.4      |
| Photography        | 9245.49      |
| Places             | 4109.93      |
| Playing Cards      | 20519.8      |
| Plays              | 5344.22      |
| Poetry             | 3200.07      |
| Pop                | 8001.68      |
| Pottery            | 13267.5      |
| Print              | 9391.38      |
| Printing           | 3351.32      |
| Product Design     | 80152.9      |
| Public Art         | 8192.85      |
| Publishing         | 12790.3      |
| Punk               | 3099.26      |
| Puzzles            | 12735.6      |
| Quilts             | 8264.63      |
| R&B                | 7105.55      |
| Radio & Podcasts   | 14150.6      |
| Ready-to-wear      | 18490.2      |
| Residencies        | 5165.29      |
| Restaurants        | 24110.5      |
| Robots             | 86408.5      |
| Rock               | 6096.19      |
| Romance            | 9424.5       |
| Science Fiction    | 19270.2      |
| Sculpture          | 11251.8      |
| Shorts             | 5571.05      |
| Small Batch        | 11080.1      |
| Software           | 24758        |
| Sound              | 152518       |
| Space Exploration  | 72032.2      |
| Spaces             | 19103.3      |
| Stationery         | 11748        |
| Tabletop Games     | 58540.2      |
| Taxidermy          | 5572.56      |
| Technology         | 94020.3      |
| Television         | 51381.1      |
| Textiles           | 8421.47      |
| Theater            | 5659.81      |
| Thrillers          | 17262.9      |
| Translations       | 10064.2      |
| Typography         | 36539        |
| Vegan              | 16650.8      |
| Video              | 9379.04      |
| Video Art          | 6671.97      |
| Video Games        | 75638.9      |
| Wearables          | 171121       |
| Weaving            | 20443        |
| Web                | 26289.1      |
| Webcomics          | 24636.8      |
| Webseries          | 12189.7      |
| Woodworking        | 6102.04      |
| Workshops          | 11593.5      |
| World Music        | 9110.7       |
| Young Adult        | 5313.46      |
| Zines              | 5582.47      |

### 4. What is the success rate of projects launched in different years?

```sql
SELECT
    EXTRACT(YEAR FROM launched) AS year_lunched,
    COUNT(*) AS total_project,
    SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) AS successful_projects,
    ROUND((SUM(CASE WHEN state = 'successful' THEN 1 ELSE 0 END) * 100 / COUNT(*)), 0) AS success_rate
FROM 
    kickstarter_projects
GROUP BY
    year_lunched
ORDER BY
    year_lunched;
```

| year_lunched   | total_project   | successful_projects   | success_rate   |
|:---------------|:----------------|:----------------------|:---------------|
| 1970           | 7               | 0                     | 0              |
| 2009           | 1329            | 579                   | 43             |
| 2010           | 10519           | 4593                  | 43             |
| 2011           | 26237           | 12171                 | 46             |
| 2012           | 41165           | 17892                 | 43             |
| 2013           | 44851           | 19415                 | 43             |
| 2014           | 67745           | 21107                 | 31             |
| 2015           | 77300           | 20971                 | 27             |
| 2016           | 57184           | 18766                 | 32             |
| 2017           | 52200           | 18462                 | 35             |
| 2018           | 124             | 0                     | 0              |


*It's seems that highest success rate of project launched in 2011 with a bold count of 46* 

# What I Learned
- **Complex Query Crafring:** Mastered the art of advanced SQL, merging tables and wielding WITH clauses.
- **Data Aggregation:** Got comfortable with GROUP BY and turned aggregate functions like COUNT() , SUM() and AVG() into my data-summarizing sidekicks.
