import Foundation

extension Array {
    func getRandomElement() -> Element {
        let randomIndex = Int(rand()) % count
        return self[randomIndex]
    }
    
}


var rawScriptures: String = "How useless to spread a net where every bird can see it! (Proverbs 1:17)If you look for [wisdom] as for silver and search for [wisdom] as for hidden treasure, then you will understand the fear of the Lord and find the knowledge of God. (Proverbs 2:4)None who go to [the adulterous woman] return or attain the paths of life. (Proverbs 2:19)Do not be wise in your own eyes; fear the Lord and shun evil. This will bring health to your body and nourishment to your bones. (Proverbs 3:7-8)By wisdom the Lord laid the earth’s foundations, by understanding he set the heavens in place; by his knowledge the watery depths were divided, and the clouds let drop the dew. (Proverbs 3:19-20)Do not accuse anyone for no reason— when they have done you no harm. (Proverbs 3:30)The beginning of wisdom is this: Get wisdom. Though it cost all you have, get understanding. Cherish her, and she will exalt you; embrace her, and she will honor you. (Proverbs 4:6-8)Keep your mouth free of perversity; keep corrupt talk far from your lips. (Proverbs 4:24)Drink water from your own cistern, running water from your own well. (Proverbs 5:15)How long will you lie there, you sluggard? When will you get up from your sleep? A little sleep, a little slumber, a little folding of the hands to rest— and poverty will come on you like a thief and scarcity like an armed man. (Proverbs 6:9-11)Choose [wisdom’s] instruction instead of silver,knowledge rather than choice gold, for wisdom is more precious than rubies, and nothing you desire can compare with her. (Proverbs 8:10-11)Do not rebuke mockers or they will hate you; rebuke the wise and they will love you. (Proverbs 9:8)A wise son brings joy to his father, but a foolish son brings grief to his mother. (Proverbs 10:1)He who gathers crops in summer is a prudent son, but he who sleeps during harvest is a disgraceful son. (Proverbs 10:5)The wise store up knowledge, but the mouth of a fool invites ruin. (Proverbs 10:14)Sin is not ended by multiplying words, but the prudent hold their tongues. (Proverbs 10:19)The fear of the Lord adds length to life, but the years of the wicked are cut short. (Proverbs 10:27)"

var scriptures = [String]();
var index: Int = 0;
var scripture: String = "";

//break up the scriptures
for s in rawScriptures.characters {
    if(s != ")") {
       scripture += String(s);
    }
    else {
        scriptures.append(scripture + ")");
        scripture = "";
    }
    
}

var count: Int = 0;
var completeScriptures = [String]();

while(count != scriptures.count) {
    var randomScripture = scriptures.getRandomElement();
    completeScriptures.append(randomScripture);
    var indexToRemove: Int? = scriptures.indexOf(randomScripture);
    scriptures.removeAtIndex(indexToRemove!);
}

for completeScripture in completeScriptures {
    print(completeScripture);
}







