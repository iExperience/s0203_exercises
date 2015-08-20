require "sinatra"

horoscopes_list = [
	{
		name: "aquarius",
		description: "The inventive and exploratory Aquarius is like one of those kinky sex positions you find in a deck of Kama Sutra cards. Their sex fetishes are a little unconventional and daring, but if you aren’t down, use the safety word.
		Due to their agreeable natures, they’ll be happy to switch it up. Aquarius aren’t judgers; they had their brief “experimental phase” in college and that one night with two Justin Bieber backup dancers. They’re just as easy to be around as they are to f*ck.
		",
		song: "'Promiscuous' by Nelly Furtado ft. Timbaland",
		location: "In the Shark Cage Diving Cage"
	},
	{
		name: "pisces",
		description: "Pisces are emotional and nurturing people. They don’t f*ck; they make love. Pisces are like the spooning sex position – they get attached very easily, are super intimate and sometimes in your face. They’ll even mouth-breathe into your hair during a more vigorous romp. Sexy.
		Pisces also care deeply about their partners’ needs, which means you’ll always come first. They tend to escape reality from time to time, making their sexual escapades out of this world. Nail one down and a Pisces will be sure to nail you too.",
		song:"'Best I Ever Had' by Drake",
		location: "Amongst the Trees at Newlands"
	},
	{
		name: "aries",
		description: "True to their sign, an adventurous and impulsive Aries will totally ram you (preferably from behind). Their “take charge” mentality makes them the doggy style position of the zodiac.
		Aries are a little forceful, like to take the lead and have an enthusiastic disposition, which means they were just as turned on by the “50 Shades” dominatrix as you were. If you’re looking for unapologetic and energetic sex, then find yourself an Aries.",
		song:"'Crazy in Love' 50 Shades of Grey Remix' by Beyoncé",
		location: "At the Top of Table Mountain"
	},
	{
		name: "taurus",
		description: "Taurus are lazy and persistent, so they’ll prefer being on bottom, but will throw in some good thrusts. A Taurus man is like the bottom layer of reverse cowgirl — self-indulgent, he’ll let you take the reins, but he will dictate the ride.
		A Taurus woman is the ankles-up position — she likes feeling secure and stable and wants you to set the pace. A Taurus is practical and reliable, so (Good news!) there will always be condoms. Don’t expect any one-night-stands, as a Taurus can be a bit possessive. Like their bullish symbol, Taurus don’t like being pushed too hard, so be careful to keep it gentle.",
		song:"'Thinkin Bout You' by Frank Ocean",
		location: "Inside of an Uber"
	},
	{
		name: "gemini",
		description: "Gemini are energetic and imaginative, making them great partners for oral sex. Their flip-flopping personalities mean that you won’t get the same thing twice. Gemini are curious and spontaneous — they’ve gone to strip clubs on a whim and then tried those moves out in the bedroom.
		They can be superficial and into gossip, so don’t be surprised if everyone knows the size of your dick afterwards. Boredom is a Gemini’s biggest fear; expect a wild ride if you climb aboard.",
		song:"'S&M' by Rihanna",
		location: "The Cape Wheel of Excellence at the V&A Waterfront"
	},
	{
		name: "cancer",
		description: "Cancers are affectionate and sensitive and like to make their partners feel good. Because of their intimate and protective natures, they are the “Om” sex position of the zodiac, in which you two are wrapped around each other, rocking back and forth as one, and lovingly gazing into each other’s eyes.
		They’re all about feelings, so speak up if you’re not exactly feeling it. Cancers just want to get close to you — both physically and emotionally — so if you’re coming over, expect to stay and cuddle all night. Be prepared to share the bed because there will be no rolling over to opposite sides.",
		song:"'Adorn' by Miguel",
		location: "In the Vineyards at a Wine Estate"
	},
	{
		name: "leo",
		description: "Leos love to be the center of attention, so any sex position where they are the star (of the threesome, the receiving end, on a table) is one in which they will shine. They love drama and being over-the-top, which means you’ll have loud, pornstar-worthy intercourse.
		Your neighbors will certainly hear your Leo partner roar. As a fire sign, Leos have passionate and intense love affairs. They always crave the spotlight, so don’t be afraid to whip out the camera for a little fun. Vain and domineering, a Leo will gladly do it in front of the mirror.",
		song:"'Look at Me Now' by Chris Brown",
		location: "Zone Fitness"
	},
	{
		name: "virgo",
		description: "Practical, precise and meticulous, Virgos are any sex position that allows direct access to clitoral stimulation. Virgos tend to be perfectionists and slightly over-critical, so if you’re not hitting their spots, they’ll move on to the next lot.
		They are methodical and logical, which means there won’t be any mile-high club memberships or getting down in dirty places. Sand and a Virgo’s crevice just don’t mix. Stick to the bed and they’ll be sure to stick it in you.",
		song:"'Like a Virgin' by Madonna",
		location: "'Once in Cape Town' Hostel Suite"
	},
	{
		name: "libra",
		description: "Libra are the women on top. They are diplomatic, peaceful and hospitable. Where their strengths lie, however, so do their weaknesses.
		As they are vain and superficial, sometimes they only like to be on top to make sure that you’re looking at them and only them. They want you to have a good time, but you better be appreciating them for it. Compliments and flattery are always appreciated.",
		song:"'Love on Top' by Beyoncé",
		location: "In the Elevator of the Southern Sun Cape Sun Hotel"
	},
	{
		name: "scorpio",
		description: "Observant Scorpios can spot a fake from a mile away, so don’t even think about pretending to orgasm. Fiercely independent and able to accomplish anything they put their minds to, Scorpios are the sex toys of the zodiac.
		Like the toys in your goody drawer, Scorpios know how to satisfy themselves, are resourceful, dynamic and can easily manipulate their partners. They like to be in control and are a little harsh, so expect them to dominate you, no lube included.",
		song:"'Power Trip' by J. Cole",
		location: "Between the Boulders at Llandudno Beach"
	},
	{
		name: "sagittarius",
		description: "Sagittarius are the masturbators of the group. Their strength and their weakness lie in their independence, thus, they have no problem admitting when they can (and will) do something better than you.
		They are philosophers and adventurers and freedom lies at the very top of their list of things most coveted. They will have multiple sexual partners or spend weeks by themselves before committing to the wrong person.",
		song:"'Grindin' by Pharrell",
		location: "The Bathroom at Beerhouse"
	},
	{
		name: "capricorn",
		description: "Capricorns are the missionary position of the zodiac. Loyal, consistent, secure, Capricorns might not be creative, but they definitely get the job done.
		They’re super reliable people, which means (good news!) they’ll also carry a condom. Bedding a Capricorn is kind of like wooing a Salem virgin in the 1600s – prudent and reserved at first, but casting spells in bed later on.",
		song:"'Lets Get It On' by Marvin Gaye",
		location: "Between the Bookshelves at the Cape Town Central Library"
	}
]

location_descriptions = {
	aquarius: "Aquarius’s need adventure and exploration in their hookup life, and what is more inventive then doing it in their favorite place: underwater! Aquarius’s are physically connected to their aquatic routes, so being underwater is a major turn on. The best part, you and your Aquarius partner will be making love in shark infested waters. Bru, this is like the most lekker-ist opportunity of a lifetime, howzit can you turn this down? One word of caution, sharks can smell sex, so make sure that you keep your hands and feet within the cage at all times
	<br><br> <em>Hot Tip</em>: Make sure to bring oxygen tanks, you may be down their for a while (unless your partner has a suffocation fetish, then in that case don’t)",
	pisces: "Newlands Forest is another great option for fans of the idea of getting nookie in nature. There are lots of shady pine trees and you can easily wander off the main path for a bit of privacy if you’re suddenly overwhelmed with the desire to do it (it happens). Serious adventurers can even opt to climb up one of the trees for some loving on a limb, and if you can figure out the logistics of this particular scenario, then more power to you because you’ll probably have to contend with some serious bark burn. Fortunately, you don’t have to worry too much about being quiet, since other forest dwellers will most likely just assume those animalistic grunts are coming from a bunch of baboons.  
	<br><br> <em>Hot tip</em>: Pack a picnic basket and enjoy some post-sex snacks at one of the forest’s several streams or braai spots. ",
	aries: "You’d think this option would be a tricky one because there couldn’t possibly be a secret sex spot atop the über flat Table Mountain, right? But what not many people know is that you can actually spend the night on this wonder of nature by booking out the beautiful stone Overseers Cottage, which rests right at the top of it. You could hook up on the hike up, and then in the evening, when you have the whole place to yourselves, you can howl at the open skies while getting frisky in the fynbos that overlooks the entire Cape Peninsula. If the weather isn’t playing along, there is always the option of taking things indoors and using every corner of the large cottage as a play-for-pleasure zone.
	<br><br> <em>Hot tip</em>: Since the cottage works on a self-catering basis, why not bring along some sexy eats to set the mood? Think strawberries, oysters and Champagne, and for extra points, whipped cream and body chocolate.",
	taurus: "A Taurus is too lazy to walk to their designated hookup spot, so they will mostly likely travel by Uber… You know what, why not just do it right there in the car? The driver will probably be ok with it, not that the Taurus really cares. You gotta do watcha gotta do, right bru? 
	<br><br> <em>Hot Tip</em>: Order an Uber XL, ya gonna need the space.",
	gemini: "If the Ferris wheel’s a-rockin’, don’t come a-knockin’! This is another option where faster is better since you only get about 12 to 15 minutes in your own little capsule to do what needs to be done. Though, the combination of revolving cabins and panoramic views of Cape Town, and the danger of accidentally mooning innocent bystanders while in the act, should make things, um, come along quite quickly. Consider it a different kind of way to get your Mile High Club wings. Not to mention, you can add it to the top of the list of places you’re most likely to get arrested for your erotic intentions. But at the end of the day, you can rest assured you’ll be one of only a few people who can say that they’ve had a good go-around while going ‘round.  
	<br><br> <em>Hot tip</em>: If the time factor puts too much pressure on you to perform, it may be worth splurging on a private extended sky dining experience for a more leisurely lay. A VIP gondola costs R800 for a half an hour ride and a bottle of sparkling wine.",
	cancer: "We've all heard about Sex in the City, now how about sex in the vineyards? You’re certainly spoiled for choice with this one as being in vineyard country means you have a wide selection of ideal estates to choose from for your escapades. How about channelling Josh Hartnett from the film “40 Days and 40 Nights” and frolicking amongst fragrant flowers at Môreson’s orchid nursery in Franschhoek? Or maybe you want to practise your cowgirl moves and horse around in the paddocks at Avontuur Wine and Thoroughbred Estate in Stellenbosch? The best part about getting groovy amongst the grape vines is that the wine provides that necessary dose of Dutch courage you’ll need to successfully sex it up amidst the Sauvignon. 
	<br><br> <em>Hot tip</em>: Make a Cape Winelands boinking bucket list and see how many farms you can fornicate at without things ending in sour grapes.
	",
	leo: "There is no better place to get it on with a Leo then in Cape Town’s most poppin’ woman’s gym: Zone Fitness. The Leo will have everything that he/she needs: Yoga mats, a treadmill, medicine balls, dumbbells, sweaty towels, a locker room, steroids. There is nothing a Leo can’t do in a gym, so why not bring your buddy by one day?
	<br><br> <em>Hot Tip</em>: Make sure to do it in front of the wide, full length mirrors, that way, you can watch yourself in action",
	virgo: "Virgo’s like to do it on beds, so why not bring them home to your own personal “Once in Cape Town” luxury suite? You will have everything you need to make your night super sexy: Bad lighting, awkwardly designed pillows, imported water from the Arctic Ocean, a dirty rug, ratchet windows, criminals that break into your room and steal yo shit, and much more! Sounds like a good night to me ;)
	<br><br> <em>Hot Tip</em>: Wanna make the night even more sexy? Why not invite the criminals to join you in a good-old fashion orgy?",
	libra: "What could make for a better in-and-out session than riding up and down in one of the most spectacular elevators in Cape Town? The Cape Sun hotel in the heart of the city boasts a glass lift made for loving that extends out from the building and overlooks both Table Mountain and the seafront (it just depends which side you’re facing). Just push the emergency button and hook up in your own little lofty coital castle; though, do make sure you’re both high and fast enough to get things done before a crew arrives to ‘rescue’ you.  It’s  the perfect option for people who like to throw a bit of voyeurism into the mix without having to expose themselves too much as couples will just look like little ants at such great heights. 
	<br><br> <em>Hot tip</em>: You score bonus points for getting access to the hotel without actually being a paying guest, but it may be worth just booking a room and taking full advantage of all the lodging’s amenities. ",
	scorpio: "Yes, sex on the beach is so cliché that there’s even a drink named after it. But Llandudno isn’t your average sandy spot as it actually boasts more boulders than beach, which means there are plenty of little nooks within which to get naughty. With a bit of exploring and climbing, you’re bound to find a sweet cave for love cuddles where the smooth granite rocks can serve as great surfaces to get leverage for your legs. Plus, you’re offered slightly more protection from any potential prying eyes. Another bonus of boning between the boulders is that you don’t have to worry about sand getting into bits you’d rather not have exposed to the seaside elements; though, maybe bring a blanket (or use your discarded clothes) as an extra barrier just in case.  
	<br><br> <em>Hot tip</em>: It’s best to choose this option on overcast days when the beach is less likely to be crowded and you don’t have to worry about being seen, or being heard over the crash of the waves.
	",
	sagittarius: "There aren’t many nightclub bathrooms that would be considered ideal (read hygienic) for mid dance-time dirty deed-doing, but if you’re into that sort of thing, then there’s one place you should definitely try drop the trousers: the loos at Beerhouse, which sits in the middle of Long Street. However, this won’t be your average bathroom boink, these WCs have everything: beer, a creepy bathroom attendant, beer, toilet paper, beer, a toilet seat, beer, graffiti, STDs and beer! All it takes is a strategic sneak-away and the two of you can be in and out of there in a matter of a few songs. Just be aware though, as there’s bound to be plenty people trying to answer the other call of nature, you can expect a lot of coitus interruptus. 
	<br><br> <em>Hot tip</em>: Make this a quick one, and practice a little flexibility so that other people will see only one set of legs instead of two.",
	capricorn: "How many of you have had the naughty librarian fantasy? Do books get your blood boiling in a good way? Picture your partner pressed up against the first edition of “Pride and Prejudice” as you try your best not to break the cardinal rule of libraries: being absolutely silent. Sex between the stacks is definitely some risky frisky fun; though, within those endless aisles and levels of literature it shouldn’t be too difficult to find a secluded corner for a quickie. Besides, if you do get caught, you can always grab the nearest copy of “Fifty Shades of Grey” and argue that you were only doing some research. 
	<br><br> <em>Hot tip</em>: Sign up for a membership while you’re there, because there’s nothing sexier than a reader (plus, you then have a solid excuse to keep going back). ",
}


get "/" do
	@horoscopes_list = horoscopes_list
	erb :index
end

get "/:horoscope" do |horoscope|
	@horoscope = horoscope.strip
	@horoscopes_list = horoscopes_list
	erb :descriptions
end

get "/:horoscope/location" do |horoscope|
	@horoscope = horoscope.strip
	@horoscopes_list = horoscopes_list
	@location = location_descriptions[horoscope.to_sym]
	erb :location
end

