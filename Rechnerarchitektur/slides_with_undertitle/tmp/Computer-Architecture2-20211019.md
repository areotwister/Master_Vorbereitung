<!-- /home/areo/Videos/Rechnerarchitektur_old/computer-architecture-20211019.mp4 -->
<!-- /home/areo/Videos/Rechnerarchitektur_old/_computer-architecture-20211019_imgs -->
<!-- /home/areo/.config/mpv/mpv.conf -->
[toc]
# ==============0:00:00==============
<!-- - `0:00:00`: the so. -->
<!-- - `0:00:07`: let me start sharing my my screen before we do that just a second. -->
<!-- - `0:00:17`: that's the bottom. -->
<!-- - `0:00:20`: hmm. -->
<!-- - `0:00:26`: alright so this is the lecture on the architecture and it's it gets you are sick sir fred's then it's organized that by neat and mature so fluidly and who is also available to delay and who will act. -->
<!-- - `0:00:44`: please take care of the exercises and maybe we'll just explain first a little bit about ourselves and then we talk about this lecture so you find my home page here and because we just recently moved to a two to five bug me. -->
<!-- - `0:01:05`: i mean also the trillion three million mathias fleury moved. -->
<!-- - `0:01:11`: this is not updated completely yet and if you want to know more about me you need to go to this or the old web page and there's lots of material there and we get some prices and you will also see that our main thing is actually the sat solving if you're interested in that. -->
<!-- - `0:01:31`: and yet we organizing hadn't organized lots of conferences and so on so so my background is more informed than harm every vacation as you see here on this page also this happen what retaking competition which i've been organizing for fifteen years and. -->
<!-- - `0:01:48`: due to the resides we did there in inbounded modern shaking for hawk for which we also cut. -->
<!-- - `0:01:56`: lots of prices all right. -->
<!-- - `0:02:01`: mathias flowy or maybe you want to say something about you. -->
<!-- - `0:02:07`: but he is over there. -->
<!-- - `0:02:09`: can you hear me yes okay so my background is a little bit different so i'm more into verification using a proof assistant which basically means that you explain to a computer how your proof should look like and then the computer to you know you need more details and then affixing the computers. -->
<!-- - `0:02:30`: and yes some of my after port some of the things from life from my webpage to this webpage too. -->
<!-- - `0:02:39`: but you can find more details here of what i've been doing and what the treatment phd thesis and so on. -->
<!-- - `0:02:48`: alright so this is this is mrs about us let me point out that we want to keep it interactive so we won't be the encourage you to also come. -->
<!-- - `0:02:58`: i am a mute yourself if. -->
<!-- - `0:03:03`: and really ask questions and as i said like the mature spirit monitored the chat and then forward the questions by by just reading them out or italy. -->
<!-- - `0:03:17`: alright. -->
<!-- - `0:03:19`: yes please go ahead half a question for me at least a contract something in public chat chest and private chat can only send the send to the are the hosts okay so let's let's let some purpose but be constantly abruptly not the problem is bbb bb cannot recall. -->
<!-- - `0:03:38`: or the chat so we don't want to record the cit i mean if it's going to be really awkward be not going to this possesses a way of sort of like kind of really making sure that like the mateus will be there is reading the question and anybody in the lake will be recorded even if you if you don't want to wake up like you did thank you for that. -->
<!-- - `0:03:59`: unlike you are you asking questions really that's the the only reason we have not been doing this before but if this is not going to work then we'll open up this chet but i thought like this is easier because then that would be said if a second communication channels let's kind of go always goes through either mathias on me okay thank you. -->
<!-- - `0:04:20`: anyhow so if this is awkward let us know also be aware we are of course like we've been doing this online dating no actually already before ko went out and this is the fourth semester we're doing it but of course he never stop learning and this is a new place so please tell us if something is. -->
<!-- - `0:04:38`: as as trained so there's like this some idiots here i'm a witch in which you find. -->
<!-- - `0:04:47`: the the the the pointers to the to all cloud repository but we have the slides and also these recordings will be there and there's also a forum and we really want to encourage you to use this forum so the the reason that of course is that you have aggression then somebody is. -->
# ==============0:05:00==============
<!-- - `0:05:06`: might also have this question and therefore it's way better to sort of ask this quaint of pop lately and then if the answer is that everybody has the benefit of this and of course you can if it's if there's some real issues or personal issues you can have a synthesis of a person in a let's of course also possible. -->
<!-- - `0:05:28`: alright i i if theres like land on it's good let's go go go into the organization also on this next cloud them so that if anybody cannot access this next cloud directory also let us know in any case authors on this. -->
<!-- - `0:05:47`: mixcloud directly you'll find also this a single slight here which is the organization such as move this. -->
<!-- - `0:05:59`: so the lecturers at it in a certain sense it's pretty simple so we always have tuesday and thursday and it's always from ten to twelve and and but we kind of every second week to an exercise class and his exercise class is is meant. -->
<!-- - `0:06:17`: to say that really do some sort of hands on with this material so so we're going to present an exercises and at the sir will be thin and it's constant presented by my tears on that day however the experience in the past with his lecture was that. -->
<!-- - `0:06:38`: really only having like every week like upon our exercise classes too short because it's like to be stark and then it's over so that's why we're going to have it every second week and then two hours and it makes the schedule a little bit confusing and complicated but this is what beeps. -->
<!-- - `0:06:57`: to do so it's in essence every second thursday starting next week but they're like tweak sections one is before christmas as you can see here so here we have in the week before christmas we only do an exercise because the thursday is actually off and that's why we're having here and one. -->
<!-- - `0:07:18`: the next size and and then there's another exception at the very end of the the lecture and and and maybe become clear when we explain how we plan to do this exercise so these exercises will always have the material of the the previous week and the thursday before the previous week this year an example at the. -->
<!-- - `0:07:38`: okay so there's like. -->
<!-- - `0:07:40`: so november eleven days for instance this there's the exercise and. -->
<!-- - `0:07:47`: the exercise she's like the exercise like mathias would present will be handed out on this monday right before like in the same week so that you can have a look this is highly recommended so you can try the exercises yourself and then on thursday matures will present a solution and engage into discussion how how like. -->
<!-- - `0:08:07`: what was difficult what was difficult and things like that and then at the material on that is not an i prefer these exercises of course cannot be the tuesday which will be the ninth rated to be the the tuesday and thursday of the previous week and then the thursday before so you can think of there's lake and three that. -->
<!-- - `0:08:27`: pictures like this one and next week as thirsty and then in principle lost the one before which did not happen yet and then next week on thursday i was going to talk about this material misses the idea. -->
<!-- - `0:08:41`: and then you have less one exception the date at the very end where we discuss how we do the exam maybe it to trial exam or like really go through the material or a question and answers. -->
<!-- - `0:08:56`: and this is the one here so you don't have to hand in anything so we're like assuming this is more than a trans person you're responsible for really making sure that your your tribe is working on this material and am but he offered like this freshman answer or in my exercise class. -->
<!-- - `0:09:16`: every second thursday that's the idea. -->
<!-- - `0:09:20`: is the mode clear. -->
<!-- - `0:09:23`: and at the end there will be an exam of course and it will upbeat about that in essence this would be present in the the exercises. -->
<!-- - `0:09:37`: alright if there are no questions on this cat tune. -->
<!-- - `0:09:44`: the end where i'll i'll start with the book going to have the. -->
<!-- - `0:09:51`: i then have not opened in so i'll need to sign up here before we start with a book this guy can launch support. -->
# ==============0:10:00==============
<!-- - `0:10:02`: sorry the the background the pole for the background from students yes exactly yes oh yeah yes he replied is more potent and mathias is starting that poor little please answered so we're trying to. -->
<!-- - `0:10:17`: i asked some sort of like very very basic questions and. -->
<!-- - `0:10:34`: so it looks like i'm currently seeing only the. -->
<!-- - `0:10:39`: maybe we should to stop cheering for a second. -->
<!-- - `0:10:44`: i can only see the afternoon. -->
<!-- - `0:10:50`: the first question. -->
<!-- - `0:10:55`: alright so like it seems nobody is voting any more maybe we can then go to the myths question. -->
<!-- - `0:11:08`: so. -->
<!-- - `0:11:11`: so i mean we don't see the result i mean students don't have a reason to vote is i don't have to share screen for that. -->
<!-- - `0:11:19`: yeah but i want to see the first question as well so i think i may have to stop the pause that's what i wanted to say so i cannot control whether an honor students answer the other questions i'm not sure this is anyhow so we're ending the poor knowledge but there was enough time and then we we should be the the resides should be. -->
<!-- - `0:11:39`: they're right. -->
<!-- - `0:11:42`: and. -->
<!-- - `0:12:01`: i think we're only having this this one question right are you starting the next one too or i cannot. -->
<!-- - `0:12:11`: i cannot launch anything m's already the world so let me just say that it was packed up as expected top of the students earned a master of them the better i think the appropriate questions on the topics but let me see whether i can start this one in. -->
<!-- - `0:12:30`: and. -->
<!-- - `0:12:33`: alright just a steak. -->
<!-- - `0:12:38`: i think like there's only this this one nif anyhow but thanks for for for for giving us this information to repair may be another point next the next thursday. -->
<!-- - `0:12:52`: okay then i. -->
<!-- - `0:12:59`: despite sharing the screen again. -->
<!-- - `0:13:09`: so on. -->
<!-- - `0:13:14`: there's this book we're going to use them and it's. -->
<!-- - `0:13:19`: unfortunately not on this one and the one locked into the into the ears at the moment but i think you can can see when i avoided up and there's like the muffin sauce on the areas so this is the book you're going to use and it's very cool because i i need to show you this or this it's thin this is actually. -->
<!-- - `0:13:39`: ea to because. -->
<!-- - `0:13:41`: about thirty years ago i bought this well this is exactly the same book second edition and it's like a problem when they started this whole thing in eighty nine or something and this is from ninety eight this was from here and that's what i used in the past or support for for teaching this material being petty. -->
<!-- - `0:14:02`: tha part of immature did here and as you can see this is much thinner so you would ask why it's thinner and the reason is that the also put a lot of this material from the book actually online but you can also access here and indeed but i think i forgot the. -->
<!-- - `0:14:22`: the two have this the opens on youtube. -->
<!-- - `0:14:26`: companion it's cards. -->
<!-- - `0:14:30`: and yet here we go. -->
<!-- - `0:14:34`: this is the companion of this book and all of these sections here are are still and you are not sharing gifts i know just a second. -->
<!-- - `0:14:45`: i. -->
<!-- - `0:14:47`: i was searching for this. -->
<!-- - `0:14:50`: and and. -->
<!-- - `0:14:57`: this is the wrong thing though so read game to and here's the companion page and you'll find the link also in the. -->
# ==============0:15:00==============
<!-- - `0:15:07`: in the alias and all the sections here are and are not in for instance your twitter page the church how sorry this is probably the wrong word wrong sharing here. -->
<!-- - `0:15:22`: just a second i thought i was sharing the whole screen. -->
<!-- - `0:15:27`: now we go. -->
<!-- - `0:15:29`: okay here we go i hope it's working now. -->
<!-- - `0:15:35`: if not i'll stop me. -->
<!-- - `0:15:37`: the companion webpage that the link is also in the am. -->
<!-- - `0:15:42`: that in the book and also on an ageist and then read me of india's end unnecessary immediately read me which you find in from india as in the next cloud directory and for instance there's this historical perspective which i personally find really interesting and it's not in the book anymore it's kind of famous. -->
<!-- - `0:16:02`: look here and not in in in this one and also the other things here and and so there's like these chapters i kind of free available also like these three and appendices but like appendix one which is also something we will do partially in discourse it is not and also the book not the book. -->
<!-- - `0:16:22`: is not completely expensive it's seventy euro this one would be way more expensive there's a talk about this later this was another book by the same authors. -->
<!-- - `0:16:33`: and why is this book so cool because he's pranked usa actually this this version i have here is from one to two thousand twenty one was published last december went to some twenty and it's the as you can see it's the the risk edition for the five digit number talk about why this is so. -->
<!-- - `0:16:53`: call an immediate end it's the second beach edition already so it has really prayed new stuff in it and that's a very nice though because i'm thinking over this class and you have this that prank you. -->
<!-- - `0:17:07`: ebook i'm alright amazon i mean we could took questions in the chat okay the first one is whether there is a big difference between the first and second edition because the library has only the first edition. -->
<!-- - `0:17:21`: oh well i didn't check that that the complete list i'll i'll i'll come back to this later so this was the question we need to know on an admitted really explain it in the forum okay so i didn't check that. -->
<!-- - `0:17:35`: and let me let me so in the second question makes the serious second question whether there is a way to get a pdf of the book and of course he cannot provide a pdf actually i don't own a pdf of the book but they're all like pdf on the web somewhere right. -->
<!-- - `0:17:52`: and so uh huh. -->
<!-- - `0:17:53`: one you want to do not want to invest the seventy euro which i can understand it it might be good to add to to surf the web. -->
<!-- - `0:18:03`: and it's also i would say not completely necessary to pass this course because the exercises will also be said it's all related to to what what i what i explained in the lecture and we want to material which is in the book or which is not an hour's extra lights we're also going to do but of course it's a. -->
<!-- - `0:18:23`: way easier it's way easier to read this book instead of when you listen to this serves lights in the oven. -->
<!-- - `0:18:32`: and the recordings you might to sort of repeat this pity like reading about this the material in the book and that's why i i would find it convenient and as i said like in the old days it was much thicker and way more expensive so i think it's it's it's okay it's an okay deal like the seven years. -->
<!-- - `0:18:53`: so i don't get any money from it as a thief from the because of this because this is morgenthau a coffman the publisher but it's uber if he does some he was as a pie which i don't want to go into but like this is a nice book and decided to bury respected to person so jose osa not some some other thinks about. -->
<!-- - `0:19:12`: this in a minute so another organizational question is there any prerequisite for this course or some fundamental to fundamental knowledge base needed well the i actually thought so so i went through the the the the book itself to see what it's like the. -->
<!-- - `0:19:32`: i like covered here so the very technical details are not in years it's like a little bit light to explain this because there's another book here there are two books by these authors have explained the difference to that but of course it would be good to have some understanding of computer and digital design like. -->
<!-- - `0:19:52`: and that means the in german is taking the gene for market in in in english would be digitally design introduction pictures sign so that you understand like how in principle the habit of working like what a transistor is am but i'm on the other hand this is already on the on the second level of. -->
# ==============0:20:00==============
<!-- - `0:20:13`: he does talk about distractions a lot and then. -->
<!-- - `0:20:18`: and we're having. -->
<!-- - `0:20:20`: i. -->
<!-- - `0:20:22`: and there's always an opportunity to sort of learn a little bit about this lower level hospital in the unique you have not another body then it's not strictly required but of course it will help you to understand what's going on because at the end of it this is kind of the first place where we start on on kind of the lifting from the fish. -->
<!-- - `0:20:42`: six to something abstract which in this case is some computer architecture which is closer to what you think what is kind of standard computer science so less and sort of like analog and therefore yes sir it's on the border but we're like in this lake tribune kind of aura. -->
<!-- - `0:21:03`: on the digital side of the border and if you have a background in computer science a slight take on the computer says for everybody's protest. -->
<!-- - `0:21:12`: then it should work if it but it's better if you're already been through a course on the tutor designed like that you understand like what's the gate what's an gate how does that logic work but we're covering this a little bit naughty in in much keep the election. -->
<!-- - `0:21:31`: okay so another question can can you recommend a book or list of topics needed to understand this course better. -->
<!-- - `0:21:40`: okay so there's lots of reading materials in the book but and there's nothing lots of other books also on computer architecture and actually i come back to this to so i prepared some some more stuff because it's in these exciting times indeed if you speak to hotmail says lots of things happening currently. -->
<!-- - `0:22:00`: and this stuff is usually not in books necessarily but like it's just open and we'll talk about this in a minute this risk high for your business really. -->
<!-- - `0:22:09`: an open. -->
<!-- - `0:22:12`: you can think of open source for hartville and i this is only lab said it happened to like ten years ago but like now it's really taking and has like it's accelerating this product of a process and we're moving forwards. -->
<!-- - `0:22:31`: kind of a same development as be sold with open source and linux which is nine almost every phone and i was in hardware and this is these are very exciting times that that's why do you find lots of set of modern humans feel your chest on the way and i'll show you one example actually. -->
<!-- - `0:22:49`: in a couple of minutes. -->
<!-- - `0:22:54`: so we cut into the organise his way towards. -->
<!-- - `0:23:01`: with the exercise session also be recorded. -->
<!-- - `0:23:04`: no we don't a record the exercise session that's the plan and the reason is because there we really want everybody to interact and ask questions and that's the main point of this exercise class as much as presenting the solution because the solution will be available anyhow like you there will be peace. -->
<!-- - `0:23:25`: f of exercise cheap vpn solutions and and then this some sort of thursday these two hours will always be kind of very life and hopefully people will also show video screen staring at the screen with lots of names and. -->
<!-- - `0:23:45`: therefore we don't want to record or we can be and we should not record that part. -->
<!-- - `0:23:55`: and someone is complaining that he cannot access the content under the resources tab and alias which is a problem i cannot reproduce. -->
<!-- - `0:24:07`: so it might be on your side or. -->
<!-- - `0:24:12`: yeah you should have like the the later harris. -->
<!-- - `0:24:17`: it has people buys all the people taken over from his agent if not been in in his be might need to sort of catch you disappearing as his will for us this alias in his producer we're also working on this though so if anybody has is his or his away on those holidays. -->
<!-- - `0:24:36`: is done like any student to to have access and let us know we also have some colleagues here which we going to ask but that said it's helpful if you would also help us here. -->
<!-- - `0:24:49`: and two until the last question we cut and we do not know yet when the exam will take place yet. -->
<!-- - `0:24:57`: yeah this is centrally organized i learned and like in contrast the two that we've been before but we had to do this all safe and definitely gave no information about that yet. -->
# ==============0:25:00==============
<!-- - `0:25:10`: but it's going to be a physical exam as i understand so there's no possibility to do with the zoom exam. -->
<!-- - `0:25:23`: alright is if the questions start to. -->
<!-- - `0:25:28`: slow down then i'll do. -->
<!-- - `0:25:34`: say something more about the book okay so so this is done by as we can see by the dynasty and pettersen and and and these are like a very remarkable because they they kind of invented this and risc processor like a piece of this ideal. -->
<!-- - `0:25:54`: off having a reduced reduced instruction set architecture and therefore like the set of real commercial success of this this is the mips computer and also in the old days actually they had mips this set up mips processor sorry have as his example in the old book. -->
<!-- - `0:26:15`: and and nowadays move to these new processors actually does a different version of this with arm but arm is not like an opensource. -->
<!-- - `0:26:27`: a processor and the risk fight which is on here is kind of a competitor to arm if you want because you can get this as a company producing processors you could get is for free you could actually modify it this is a very intriguing feature of this process. -->
<!-- - `0:26:47`: they can adapt them to your needs and with arm this is not true so you have to pay on licenses like an apple for instance has a very faster and then moved to aren't completely it was for the desktops but of course they're changing it to they have to pay license to arm to do this and. -->
<!-- - `0:27:07`: in in this kind of you risk five a lot will probably allow that like there's kind of an open source hop they are. -->
<!-- - `0:27:17`: harper hardware industry and it's really clear that sort of many people are many companies will move or jump on this and bill will start and using it i think like all the companies i inherited the exception of a of arm and into which of course i'm not interested in having a competitor. -->
<!-- - `0:27:37`: ear. -->
<!-- - `0:27:39`: i. -->
<!-- - `0:27:41`: so. -->
<!-- - `0:27:43`: but i wanted to say little bit more about this version so i don't know the exact difference to be the first edition of a swan and bats this one it says the makes the restriction to started two bit i think you'd like more for for deducting the reasons why any bookers in the wild you'd probably not maybe for embedded systems but it is. -->
<!-- - `0:28:03`: but this sub you want to have now sixty four beach computers like guess are all these phones your personal even sixty four bit computer like the processors in there and this was one restriction which i actually bay comes with makes things simpler. -->
<!-- - `0:28:23`: and and the other art yeah an interesting piece of information about this book is that this was actually only done by the second abide by the by the second sorry yesterday changing the script and this was the opening because then. -->
<!-- - `0:28:43`: hennessy was actually a president of stanford and during that time this book was adapted the afford he did not contribute to it which is an interesting fact and it's also maybe the reason that only these things which changed or stayed in the book and the more fences this historical chapter i was pointing it is is on me. -->
<!-- - `0:29:03`: at the whip. -->
<!-- - `0:29:06`: alright then others like and beside this side of the hopper itself gates open source this other something which you probably saw already then i dunno i wanted to show you a few first this then wanted this thing here which i actually found on on twitter and. -->
<!-- - `0:29:25`: it's my thumb. -->
<!-- - `0:29:29`: you saw support me my twitter page weakness learn more about my past and my professional life so this is something which was twitter like last weekend. -->
<!-- - `0:29:41`: there's like this pictures printable here is like a recent five quarter which is meant to be and he rarely a high performance implementation and the interesting part about this is that yes it has a some explanation which is polish is like a peacoat awesome. -->
# ==============0:30:00==============
<!-- - `0:30:01`: and. -->
<!-- - `0:30:03`: yeah so at the end of this lecture you will understand like what's going on arms up in the slightest so this time all you're not sharing i'm not sharing sorry about that yeah i'm always forgetting that. -->
<!-- - `0:30:16`: thank you. -->
<!-- - `0:30:18`: the once again. -->
<!-- - `0:30:20`: okay. -->
<!-- - `0:30:25`: so there's this one. -->
<!-- - `0:30:28`: the tweet i saw when was it last on the thirteenth of a pool of october by paul kendall and he was sharing his newest version in a well he didn't publish it really before and it was not open about it and this is a prime your risk five implementation with read. -->
<!-- - `0:30:48`: the goal of being high performing and here is the web page and. -->
<!-- - `0:30:55`: here's like a slight set and in this light said they're like bullets which i could he explain but like we're going to do this through the electoral these parts and at the end of this lecture you will yeah let's say i understand what's in the slide and understand what he is doing and and what is missing since this thing is not complete. -->
<!-- - `0:31:16`: and probably not correct but as you already see these are me the exciting times with the flight people right now sort of really take the material of this course and implement this in open source and this didn't exist. -->
<!-- - `0:31:33`: before okay. -->
<!-- - `0:31:36`: and this is a day of course like lots of other a risk five the implementations i just picked this one because the bus last for the last friday of any type of i. -->
<!-- - `0:31:49`: alright the other thing which already is also a little bit older so so i was teaching actually it it engaged more than twenty years ago a take from architecture design course in back then this did not exist so what you see here is simply a tool for synthesizing hop to this tool is also open source. -->
<!-- - `0:32:09`: this ice spicy licenses are similar to the bike mit or gpl okay and so that means you cannot they're also like tools for which you can get the source code but you can modify which allow you to translate a description of such things. -->
<!-- - `0:32:29`: like this the processor into something low level which then can be disclosed to be manufactured of course the hopeful is not completely open source but like you see also here on on this site now on the synthesis site the open source solutions and clifford actually is a co. -->
<!-- - `0:32:49`: co-author asked because he was working we work can be seen on his be tourist thing translation of halfway up into tour models on and that's also pretty pretty exciting. -->
<!-- - `0:33:07`: that's what i wanted to say as a motivation and then if there are no questions on this motivation apart and oh yeah i forgot to mention. -->
<!-- - `0:33:18`: this book here. -->
<!-- - `0:33:22`: this is the real computer architecture provided by the one we're doing is more than likely version of this one so this one is meant for those people really at the end that want to become the hub of a process of designers while this book is sort of like i would say a mass treat for ever. -->
<!-- - `0:33:41`: computer scientists i like at least he should have some understanding of of what's said his crime to say it kind of explains and onto the stretch levis what's going on in the processor in it presents the ideas and then a person instead to technical it stops and then you would need to read his other book which is also a little bit older. -->
<!-- - `0:34:01`: but i also got the new version of this one and. -->
<!-- - `0:34:07`: the ones called them to target a and the one i was just quoting to the organization's way in case you ever ever see both. -->
<!-- - `0:34:15`: and. -->
<!-- - `0:34:17`: because i'm teaching his curse for the first time now here so i just want to make sure that we're not doing something very strange and new bitches unpredictable so we're going to only use like a material which is close to this sub book and also to these balance exercises in this book. -->
<!-- - `0:34:37`: and to the maturity of the half he upon the slides from this books i'm going to use the official lc cape as lights and then will adapt them or like extend them a little bit depending on on certain things like the the material on digital design will be because the endless lights. -->
<!-- - `0:34:57`: will be pass. -->
# ==============0:35:00==============
<!-- - `0:35:01`: alright so that's the set up then let's jump into the them. -->
<!-- - `0:35:06`: first chapter or so before i do that i should also explain the structure of the book a little bit so this first chapter here. -->
<!-- - `0:35:19`: my maturity can see it it's that the smallest one so it's it's like like an introduction to towns but from a motivation of computer architecture it's a pretty lightweight tartrate it is the only thing which is probably more technical here is like how you measure things like in the pool. -->
<!-- - `0:35:39`: movement because it'd be in this the rest of the off so not the whole the whole part but the most of the of this book is about how to make a process of fasting in order to determine whether it's faster you would need to measure speed or something and how to measure that that's a part of. -->
<!-- - `0:35:59`: this lecture which also gives some of this chapter and which also gives nice exercises and then the second part here this is one here does the rest of the chapters have all around hundreds of pages and the second part is about the sampler and and so so this lecture also as a whole. -->
<!-- - `0:36:19`: as kind of an inch pan introduction into simpler more specifically in this risk five for simpler of this open-source risk five compare processor and actually it's a very nice instruction set architecture that's called architectures kind of language and that will also come. -->
<!-- - `0:36:39`: compared to two others like the arm and to the other and the very important one is the into architecture so currently of course these two are the two big ones and but it's like they're it's it's kind of you can kind of predict at this one this risk five election to become. -->
<!-- - `0:36:59`: a very important in the future for everybody. -->
<!-- - `0:37:03`: then in chapter three we're talking about arithmetic how how edition is done so that he would go to the am and to the history section which i pointed you to before i think i have an open here. -->
<!-- - `0:37:19`: this is the the history slide set then you will see that these cross computers like this one from forty six and this one was meant to huge says compute some ya hear that is artillery firing tables so it was like numerical computation and so this third chapter. -->
<!-- - `0:37:39`: here it's really about. -->
<!-- - `0:37:43`: how to work with numbers so computers are called computers because the computing means in english kind of of doing calculations and that was even the job description of computer in the past which was a person just doing the calculations on tape it's always. -->
<!-- - `0:38:03`: with a calculator like i am. -->
<!-- - `0:38:07`: and that's what this this third chapter is about then the arena four of the whole. -->
<!-- - `0:38:14`: the book innocence as a poor because this explains how the process and internally breaks what kind of optimizations are in and it will explain pipelining and out of order. -->
<!-- - `0:38:27`: press speculation or whatever so these are sort of the core ideas of computer architecture which can be generalized to other fields as so that's why i find this the most important and interesting part of this whole book. -->
<!-- - `0:38:40`: then there's something which's chip to fight. -->
<!-- - `0:38:44`: which is about a memory and it's about cash's end. -->
<!-- - `0:38:50`: and this is sort of like one of the biggest bottlenecks in processes and and it's why it's good to have a separate chapter on this one and i'm like when you go through the steps that you will learn about how and how cases work like what tradeoffs there are and this bill will be important for. -->
<!-- - `0:39:09`: for for everybody i think who is proclaiming a machines and last but not least there's the sick specific chapter six and this is about parallel do. -->
<!-- - `0:39:22`: parallel programming of how to implement parallel machines and what kind of firm. -->
<!-- - `0:39:31`: yeah. -->
<!-- - `0:39:33`: what kind of them. -->
<!-- - `0:39:36`: the tradeoffs we have there and in england's i was teaching an advanced parallel programming coursework but did it almost on this low level as we have in these chapters i'm really looking forward to the end to this chapter it also has some brand new like new stuff in it like to talk about the indigo supposed to be used. -->
<!-- - `0:39:56`: ag but also about the the machine learning accelerator from google and i think this is one part which is due in this book but it's like only like a couple of pages you don't have to buy the book just because of these pages but of course this is very very nice and then there's like a day depending. -->
# ==============0:40:00==============
<!-- - `0:40:17`: the design in and then the the other premises are all online she can check the companion. -->
<!-- - `0:40:26`: if don't just go to the next page we have a question and i think the answers on the next page or some specialist is asking was as the suse machine did not came before the interact. -->
<!-- - `0:40:37`: it is i think it was mentioned as i wanted to mention dish so there's lake. -->
<!-- - `0:40:44`: nice with one pitch donovan years said like this is the only thing about susie the yet it's a very like a quintal virtual pint for this bizarre american office and and it's hard of course to relate sort of. -->
<!-- - `0:41:02`: the german history with the with their history and and. -->
<!-- - `0:41:08`: yeah as soon as they hit a machine but it like he was only partially funded so he didn't have as much money he can get as much money because it was not like them expected to help the war during that time and why the s actually they would look of money and this and that is why it yet the zoo. -->
<!-- - `0:41:28`: the machine was probably a little bit earlier so like depending on to whom you talk to and it was the because of that the first to some considered the first then computable machine but this is like more like a historical issue there and and and yeah so i want. -->
<!-- - `0:41:48`: i mentioned this also like this will win some of their time there and i don't find it anyhow so it's interesting to read that but i don't want to go through this historical material unless like the questions upon us. -->
<!-- - `0:42:02`: no we have still some question on exams. -->
<!-- - `0:42:05`: okay so go ahead one one not on exams is how much later with the recordings be uploaded oh what i'm going to do is after this lecture on this isn't it so we'd have to do it and the plots of zoom i will immediately go to the ever get an email from from sewage. -->
<!-- - `0:42:25`: will give me a link to you so you will get battling but this will not be defined the recordings of his link will be done posted in the forum giving us and then you can immediately watch it for thirty days because then the. -->
<!-- - `0:42:42`: our civilized society playbook will remove the recording from their cloud the advantage of this distance from these thirty days it's on the cloud of zoom so of course like escape it's better than the cloud here. -->
<!-- - `0:42:57`: i bought we will of course take this video and put it for one year into our own next cloud and you'll find the link to this next cloud with the directories of his recordings which is empty of course at the point and also up an alias and w e them could put these into identical. -->
<!-- - `0:43:17`: video. -->
<!-- - `0:43:19`: this should answer the question right. -->
<!-- - `0:43:22`: yes wait so i would ask michael you have a question restaurant. -->
<!-- - `0:43:30`: i don't know if you can be good but will there be a break during the lecture. -->
<!-- - `0:43:37`: i was pretty noisy can you repeat it. -->
<!-- - `0:43:40`: would that be a break during the lecture i hope it's better now. -->
<!-- - `0:43:45`: i used to be deeply into the break actually i thought aborting a break every half an hour but we're already at forty five minutes or so but today we're not talking technica so maybe when you have a technical session i would look to a break and like an explicit person an answer. -->
<!-- - `0:44:05`: and pushing on surf like maybe five minutes or something but but maybe not the date. -->
<!-- - `0:44:11`: alright thank you. -->
<!-- - `0:44:14`: okay and then we have question on the exams if so what we provide is so can you so first can people train on all exams like fists have up and become. -->
<!-- - `0:44:26`: while the vive will not. -->
<!-- - `0:44:28`: follow the the oid exams pretty precisely but already indeed in old the exams of phillips showed he was using some some material at least the exercises from the book and so what we tried to do is really stick to this exercise is not to the east. -->
<!-- - `0:44:48`: same so you will need to need to go through the exercise and we will present the as it did sort of we can promise that the exam will be very similar to the exercises and these exercises will be as i said like all this published on monday and then on thursday mathias will present the solution and then be due to variances of this these things. -->
# ==============0:45:00==============
<!-- - `0:45:08`: things in the same but it's clear that sort of in the old and as a society had so i looked at and off the other or the older the audix family or showing which unlike happened a couple of weeks ago this one has material in there which we probably not do so they're flake some stuff which is more relate. -->
<!-- - `0:45:29`: two i would say it you didn't sign which i don't want to do now maybe in the future but not now so like for example there was the d everything or there's like minimisation with hyper cubes this stuff may not be in this lecture also some other and it was me parts so we try to to fight. -->
<!-- - `0:45:49`: find them and said if easy technical quit that he takes exercises which which follow directly from the material from the book and we said there are lots of exercises in there and there's also like model solutions and we're going to use that. -->
<!-- - `0:46:08`: then there was the question whether we'll provide an example for preparation purpose. -->
<!-- - `0:46:15`: yeah well we'll see this is the the goal for this february for for this february. -->
<!-- - `0:46:22`: meeting. -->
<!-- - `0:46:23`: but we cannot promise at this point it will be able to to believe but this is the plan. -->
<!-- - `0:46:30`: for the seventy it was the tenth of february right yep yep. -->
<!-- - `0:46:40`: it's a quiz the exam be open book. -->
<!-- - `0:46:44`: i know it's closed book. -->
<!-- - `0:46:48`: and to answer the question directly so we already said when the exercises would be in this week but few lecture notes next there is no exercise sessions a sweet yet so i'll just show them. -->
<!-- - `0:47:03`: as you can see exercise is the least dates or the exercises are not showing screen six shares screen again. -->
<!-- - `0:47:17`: where is it now. -->
<!-- - `0:47:21`: no my window went away. -->
<!-- - `0:47:33`: okay. -->
<!-- - `0:47:37`: freighter desert like eight dates and to an exceptional on tuesday but the rest assault on thursday with a two week break. -->
<!-- - `0:47:51`: and then the monday before that which i didn't enter here will always be like three days earlier is always. -->
<!-- - `0:48:00`: the title will be published the exercise. -->
<!-- - `0:48:07`: alright. -->
<!-- - `0:48:16`: then no more questions. -->
<!-- - `0:48:20`: let's start with the meteorites michael was the question again okay. -->
<!-- - `0:48:25`: so i hope you can hear me kind of fine. -->
<!-- - `0:48:29`: there are two exceptions where the exercises on tuesday if i get this right will it also be like the monday before that where the exercise sheet gets published like day before yes and so the sun is twentieth as i said in december there's like no teaching on. -->
<!-- - `0:48:48`: thursday because it's the twenty third and but we still have sort of material for the two weeks before three days before of nature three and that's why we do an exception they're in and duly they're kind of the material for these three days there on the tuesday and then. -->
<!-- - `0:49:09`: on the twentieth january you see bill also only talk about material from the new year it's the lottery advantage and and the same is true for this eighth february and. -->
<!-- - `0:49:20`: yeah because there's like only one. -->
<!-- - `0:49:24`: one day of lecturing which we have covered that is python yet because the week before we already have electric for exercise class. -->
<!-- - `0:49:32`: alright thanks a lot. -->
<!-- - `0:49:39`: okay more organizational questions no everything's fine. -->
<!-- - `0:49:48`: alright so i. -->
<!-- - `0:49:52`: i think i did all the motivation let's jump into the slights so this is a lightweight introduction in in what this is about so will easily manage this in in the remaining and yet what is it like forty minutes and. -->
# ==============0:50:00==============
<!-- - `0:50:10`: so it's not the holds it will not finish the was set like the part on which is more technical be in third davidson also be used for the exercises next week. -->
<!-- - `0:50:21`: so we've all witnessed the the country with the revert the revolution rate and and such just need to move on my mind in those years. -->
<!-- - `0:50:33`: okay. -->
<!-- - `0:50:35`: yeah sorry about that. -->
<!-- - `0:50:39`: i'm. -->
<!-- - `0:50:41`: end. -->
<!-- - `0:50:45`: there's like one thing here which is the domain specific alec celebrate this may be a point like the time the authors of this book want to make a witness or open open source course or open source heart that he shall want it to my become more and more common death. -->
<!-- - `0:51:03`: you build your own harper to do something it's it's not as though this was of course then in the old days there was this fj heard about this already possibly by now on at a meet might open up these open source to a kind of new ways of doing and. -->
<!-- - `0:51:23`: and computer science in one of their prime example is is these accelerators from ruby which was probably some of you that was amazed by the success of iraq war and i thought it was impossible when this program was beating the one of the best human players but then i also. -->
<!-- - `0:51:43`: then later that like for this deep learning part of them are of this day actually google invented their own process which i thought like it's it's it's amazing and will and as i said this is this processes even discussed here in this book of course like has lots of money so it may not be statistically i commend. -->
<!-- - `0:52:04`: open source doesn't believe that qualify for google but it's clear we might want to see more more like these kind of applications of computer i can picture in in future computer science systems and and. -->
<!-- - `0:52:23`: yes part of that you already see it in existing like in in effect shook before in the mobile phone and there's like lots and lots of standard microcontrollers in whatever like every down like in automobiles are a kind of rolling computer if you want. -->
<!-- - `0:52:43`: i. -->
<!-- - `0:52:44`: then i think of the population of the vote solar cell phones or something like that then they're out of big projects which merely rely on an dedicate a top of that sort if the computation which is human genome project lakes really i'm categorizing the human genome this might have also nuts. -->
<!-- - `0:53:05`: of ethics and i don't need to talk about the the world wide web and i like search engines it's becoming of course like now very common that you're you're relieved that at least this has happened in the last couple of years that you really rely on this this computer you have in your hand and then dick. -->
<!-- - `0:53:25`: cloth of the backhand in the search engines for almost everything you're doing i am so computers are everywhere. -->
<!-- - `0:53:32`: and and and maybe we'll do a little bit of classification here so so and and it's this is also would would would if you want to look into this a little bit of this with historical reasons for looking into that and therefore you should also check out the of the history. -->
<!-- - `0:53:52`: chapter which is available online. -->
<!-- - `0:53:55`: so these personal computers they came around like in the seventies or eighties and when i was a peanut or actually and then. -->
<!-- - `0:54:03`: as they allowed like you can think of this like every person could have a computer this was is this keyboard president meant how you have like one computers and of course nowadays it's it's mean like everybody of you will own like i dunno like five ten computers and like in my home i have like i dunno. -->
<!-- - `0:54:24`: and eighteen am computers in my wireless lan and therefore unless of course laden and chester to a subset of of those which are on and so so everybody now owns more than one computer so this is one you age but like in the eighties it was decided yet you can have at least london servers are. -->
<!-- - `0:54:44`: slightly different concept so there it's meant like mighty the deduce this this particular computer like have a coop surfer unlike the internet the cloud web is recording will be placed over your head is is like a purse one one computer downstairs in this building and then all of you. -->
# ==============0:55:00==============
<!-- - `0:55:04`: going to use the silver itself as as it isn't like alone cloth and they have slightly different features and and there's supposed to be like them. -->
<!-- - `0:55:15`: connected of course linked to a network then need half more disk space of course then the ordinary can prove that they might need more performance because yes later like all of you will download these videos in parallel and therefore you need more costs maybe am and and of course they have different sizes of. -->
<!-- - `0:55:35`: for these guys. -->
<!-- - `0:55:38`: there's like one thing which i want to show you this history thing again because. -->
<!-- - `0:55:45`: this thing here is kind of the first supercomputer and it's it's called cray and yes when i was studying addis was praying for you and of course like everybody was kind of really excited about this and at e t that was before orleans that they actually had been the. -->
<!-- - `0:56:05`: the trodden in front of the cafeteria it was to a popular meeting place they had an old cray sitting at which was this a computer super computer end and this was meant to sort of like a game like a silver but sort of an extreme version of a server which does lots of computation needs lots of power. -->
<!-- - `0:56:25`: our end. -->
<!-- - `0:56:27`: and to. -->
<!-- - `0:56:29`: and you can afford it was a pretty expensive pickering. -->
<!-- - `0:56:34`: and thus this high a high volume computation like you can think of it like repr forecast is done there and nowadays the super computer still exists however and this is like what written thundering in essence there's only ib him setting the sir supercomputers there. -->
<!-- - `0:56:54`: they are actually and then i think they're doing lots of the developments in stuttgart so not far away from here and and a reason why they still behind this market is because there is legacy sulfur in banks which really needs to run on this ip and computers and that's why banks do. -->
<!-- - `0:57:14`: by the super computers from the idea but says very small market and he am not sure like with the disbelief like in twenty years we'll be there but we don't like this legacy software like lives forever. -->
<!-- - `0:57:29`: okay then embedded computers i mean and yet you cannot really call a phone any more embedded computer it's like a full fledged computer has like maybe six cores and it's very similar to your desktop computers like the latest version of a phones you can pluck them to his treating the keyboard and chest. -->
<!-- - `0:57:49`: this and miss magnanti computer but embedded computer somewhat things like in in in robots in cars and. -->
<!-- - `0:57:58`: they usually require less power right because they you have maybe and their performance is not as crucial. -->
<!-- - `0:58:07`: what's very interesting in particular in the automotive sector but also in other sectors where they hit machines is that they really have to be cheap so this cannot be like hundred europa processors so it's more likely in the one year old of single digit euro range do you want your processor. -->
<!-- - `0:58:27`: to add to be. -->
<!-- - `0:58:30`: and that's why he won't also use the latest then we can talk about this later like have a process like maybe like twenty five nanometers final twenty two and to. -->
<!-- - `0:58:45`: i'm also. -->
<!-- - `0:58:49`: be down producing lots of volumes or so and possibly actually peace process aside the most produced processes anyhow. -->
<!-- - `0:58:59`: then from the kind of more consumer market here there's like another trend which you own and they are off it's this said the post-pc area where i live we moved the ray from from from the pc well i mean we're not really moving the waiters is grey curve here it's just going down. -->
<!-- - `0:59:19`: a little bit over the years and the reason for that is as i said because the phones are now already like full fledged computers and actually it's a smart phone which came around like in big time and probably it's it's too good the display has the capacity to display the touch display which we all know and that which was. -->
<!-- - `0:59:39`: kind of a pioneer i wasn't a pioneer but thought that ties the masses by happy for the first time around that time in two thousand and seven. -->
<!-- - `0:59:49`: what's interesting here these these are newer pizza like crust from the book which have purse that befall corbyn so kobe started in it's called kobe two thousand and nineteen and maybe if he were to for this lecture next year and an updated slide we'll see again here a race of pcs and tech. -->
# ==============1:00:00==============
<!-- - `1:00:09`: leds i would i would predict actually because this is the sole phone market of course probably state that the same actually what you see already this is a kind of saturation in the phone market maybe you also realize this personally that said if the frequency of of buying a phone goes down because you you seem to have already with the latest. -->
<!-- - `1:00:30`: everything you need and like new versions of phones non keeps your many more features and we will see all this this trend can can continues. -->
<!-- - `1:00:40`: i. -->
<!-- - `1:00:42`: and the some of the phones and then of course now that it's not here on the on the on t the slide from the cassettes and others like ours to our smart watches and our customer mobile devices which need the battery and their orbit. -->
<!-- - `1:01:02`: connected to the internet this is actually connected to the second point we have to the bottom and it's like in the range of one hundreds of dollars like yes at the newest phones of course of course to have a cricket like more than a thousand dollars thousand euros but this is kind of the range and yet we have smartphones tablets a day. -->
<!-- - `1:01:22`: then a twenty classes or something google prepare print a brought forward but this did not succeed in the market but we did the watches can smarten watching the they seem to be faring well and that's why what we're going to continue to have its. -->
<!-- - `1:01:41`: however all of that is a loss and only made possible was because during the same time also to like in the last fifteen years cloud computing appeared and became the norm so so what's cloud computing well you you have all the computers like finding a service provider like google or msn. -->
<!-- - `1:02:01`: and and and and there's lots of microsoft cloud that caught the zoo and seven they're like have lots of compute farms and bleeding sized warehouse sizes and. -->
<!-- - `1:02:16`: they provide said if a service to users outside and tried to set of them and they did they tried to send the service i mean who doesn't want to start selling it now but the like your disk space or whatever bit in a cloud space and that it's more like through an advertisement. -->
<!-- - `1:02:35`: and then. -->
<!-- - `1:02:38`: i. -->
<!-- - `1:02:39`: and the the interesting thing about this herself as part isn't it sort of you can without investing into hock where you can sort of get lots of compute power for four years as specific services as sort of yeah right into him. -->
<!-- - `1:02:58`: this is of course not only huh four p m diesel is like this a bullet down there which says said the portion of software runs on the postman a mobile device and the person runs in the cloud like think about like gmail is the prime example of antoine which is now probably wrong this and a seventeen year. -->
<!-- - `1:03:18`: spock owed and end. -->
<!-- - `1:03:22`: i said if you do one a searches your archiving whatever actually in oklahoma called computer and you only exist if you're through your person to an mobile device and. -->
<!-- - `1:03:36`: but beside these pm these of course this idea would could also apply to many other things like to think about to the face of training car which we cannot really sad tried to triumph itself that it needs the quality needs to have a connection to the internet and will be a possibility and if you can use. -->
<!-- - `1:03:57`: then the cloud to sort of have a simplifying the sign of such a a car maybe you should do it enough personally peak manufacturing companies are also start putting their machines at least the software behind it indeed the analysis and the data gathering into the plot. -->
<!-- - `1:04:17`: and the opposite of claude you might have heard about this is called an inch or so of the flow of computing and edge computing edge computing means that some of the the computing is done in the in the client so the the the best example for this. -->
<!-- - `1:04:36`: is that all these things which have to do with natural language processing so it was kind of a breakthrough like ten years ago where people were able to first have to get like natural interpretation automatic translation or you only say that from services like whatsapp which gives you a prediction what you want to type next train. -->
<!-- - `1:04:57`: end of this is in origin lead done because it's heavy made and it was done through these deep learning networks which leaks ie lots of compute power this was done in the cloud like see read and and alex are all done like that. -->
# ==============1:05:00==============
<!-- - `1:05:15`: and so these models these machine learning model assigned to claudel computed there but of course there might be a trend if they're to move this computation closer to the to to place but the data is generated the use of offer better protection reasons and then maybe less. -->
<!-- - `1:05:35`: see the surge in edge computing and therefore maybe also in the future these p m d will have like accelerators like a like a machine gun the accelerator will see the sixteen in a couple of minutes and a picture into him yeah we need to see how this is going so. -->
<!-- - `1:05:55`: but my bet is on this cloud computing because it makes things way simpler by putting so that the heavy lifting into to the centralized to facility but you have everything under control and you don't need to run this on your battery power to impose on the device and he also there's currently a trend to move things back. -->
<!-- - `1:06:16`: the way from the thought. -->
<!-- - `1:06:20`: okay now this was the introduction what's the what's the context well it's you're going to learn how to translate that into machine language actually it's not about really the compiler or or. -->
<!-- - `1:06:36`: and how the methods for translating smith height of linkages to tool to machine code it's more about that and how do how you at the very lowest level i take the soft their hair and moved to heartbreak execution so the abstraction layer software into papa and. -->
<!-- - `1:06:56`: and this is and usually also court the the architecture and it's fines collectors conflict. -->
<!-- - `1:07:05`: you will learn a little bit about that if met metrics them so i think we're not getting here today but on thursday end but the most important part of this lecture at least this is my mind. -->
<!-- - `1:07:20`: the goal here is to teach and them about these treats honda designers used to make his processes fast because these tricks when his techniques are to a certain extent universal and and therefore by by trying to to look at is taken to prompt him. -->
<!-- - `1:07:40`: of getting a process of farce you will also. -->
<!-- - `1:07:45`: you will also learn some general ideas of what you can use in different contexts. -->
<!-- - `1:07:51`: yes as i said already before and last but not least we'll also look at parallel processing setting which is really a beast so this is not solved and it has to do with the computer architecture because we cannot have yes all the letters to to moore's law continuing to add to increase but he can't increase. -->
<!-- - `1:08:11`: key clock frequency. -->
<!-- - `1:08:15`: and then you'd be want to improve performance of something like the field we're putting ourselves now into an engineering perspective we have this processor for instance but maybe some other system and we want to improve it making it faster we we we. -->
<!-- - `1:08:34`: start with the everything trying to to change the air for some this is not done in this class you need to go to other classes to to learn upon that. -->
<!-- - `1:08:44`: then which something which is partially touched upon here in his classes well then your need to decide which language and which processor you going to use the speech determined souls or the compiler yet the the this architecture keyword it at the end means which processor instruction set. -->
<!-- - `1:09:04`: in which processor are you using like for instance he is exceeding six you can of course run it on into the osbournes indeed. -->
<!-- - `1:09:13`: and this and in all particular case of processors the processor and metric measuring speed of processes means measuring and this gives you a set of the the number of instructions executed. -->
<!-- - `1:09:27`: and then of course beside the processors they like the system has other parts which determine how fast your system runs at the end and this is the memory system ten years but this is also pretty standard diced but we'll need to talk about this is chapter five then we'll of course like you could say. -->
<!-- - `1:09:48`: i think with awkward heavy a problem then also output and input. -->
<!-- - `1:09:56`: hot me up will be up. -->
<!-- - `1:09:59`: we'll have an influence. -->
# ==============1:10:00==============
<!-- - `1:10:02`: correct said he beat the offer here arab has this following way of classifying some of these ideas which i find the feeling that you are kind of used to set up a generic way of of classifying ideas presented in the book so. -->
<!-- - `1:10:21`: so the the pictures are yeah on the okay but they're not what i think i could could have come up with a better ones but anyhow. -->
<!-- - `1:10:32`: was meta meta idea is is obstruction so i think you saw the story you like and have advanced computer scientists obstruction is kind of the leaky con te idea of computer science you're probably not very different levels of expression and you're kind of hide the details always. -->
<!-- - `1:10:53`: and and this is is one of the most off with a used to get like very complex things done. -->
<!-- - `1:11:00`: and then something more engineering principle is this make the common case fast oh i should have mentioned this attraction is connected here to this picture which is supposed to be sort of a picasso picture cubism. -->
<!-- - `1:11:20`: picture then the the same next one i saw you want to make the common case vos i'm not really sure what the car means here but the cars posted this is a fancy cars is supposed to be fast it's maybe this is the connection so when you really try to improve systems the vote will very first. -->
<!-- - `1:11:40`: saying you should always to try to find out where is the bottleneck where is the part of the system which runs slow and which like then slows down the whole system and this case which is also often the coming case should be improved and therefore you can speed up the. -->
<!-- - `1:12:00`: the whole system the next pictured here at this airplane has four turbines rate like one to the thirty five is the fifth one here didn't and they are all running parallel and displayed the improved trump. -->
<!-- - `1:12:15`: the the thrust of this airplane in itself what is a picture parallelism so this is a way to improve performance a novel way to improve performance is pipelining dislike the the switch pipe or the water pipe if you want a ser assembly and. -->
<!-- - `1:12:36`: this actually does not make sort of the individual a problem faster but think about like henry ford who started to put pipelining into factories it puts it increases the output of the factoring that that case was the number of cars produced by the ford factories and this of course. -->
<!-- - `1:12:57`: there is a way to prove the avoid a performance and if you kind of try to to work ahead and sort of use of time miss it if you're near them if anything else to do you need to know what you should work on as. -->
<!-- - `1:13:16`: and that's the purpose of prediction so protection is another performance increasing technique and we'll see this also in the context here off of this crosse-eau so it is classical here which is a symbol for that one. -->
<!-- - `1:13:32`: help. -->
<!-- - `1:13:34`: sorry and hope you're still with me i my screen playing thought for a second. -->
<!-- - `1:13:40`: so the the next one is this hierarchy of memories and this is the idea here is that whites have pyramid is you want to have the answer. -->
<!-- - `1:13:54`: the. -->
<!-- - `1:13:56`: it should look like it should have a virtual access to everything which is down here this big thing and buy instead of using here maybe something smaller one in the top you accessing it so you have the impression you could access everything down here very fast but you're actually only doing said a fifth year from the top that is why there is a pyramid so. -->
<!-- - `1:14:16`: oh and then at the end there's redundancy and dependability were sort of like how how to what are the methods for. -->
<!-- - `1:14:25`: for improved robustness of your system. -->
<!-- - `1:14:31`: alright then the you have several labour layers of sort of a systems perspective for your computer and and at at the corridors like harpo maybe then the wrong disaster. -->
<!-- - `1:14:49`: a system software typically you may be written in c and then the wrong business application software which will use the system software including libraries and to do the job and then the library schools make use of the author and down indeed a call here does this bit of you are there. -->
# ==============1:15:00==============
<!-- - `1:15:09`: like the processor the memory took about that and the sub io controllers. -->
<!-- - `1:15:16`: okay so we're talking about the the interface between the system software and between the harper end. -->
<!-- - `1:15:25`: and here you see some examples of this on the top there's like the the high level example ford. -->
<!-- - `1:15:35`: the smaller program it just swaps two consecutive elements of an eraser you see here the the reavie and it has been to trista for bites if you want and at position k it takes out the key element and then it saves the cape element. -->
<!-- - `1:15:56`: all righty case determined by eighty by the next one in the array and then the next one where he gets this to say alright in this function here. -->
<!-- - `1:16:06`: if you compile it will get this assembly code and this business like the chapter two will talking about the assembler quality of this is risk five. -->
<!-- - `1:16:18`: and yeah i can just maybe as a teaser explain what this thing is doing so the first to. -->
<!-- - `1:16:26`: lying here it might have lifespan by a by shifting the input eleven which is this case here by three bits by eight and then it would do. -->
<!-- - `1:16:42`: actually get here the. -->
<!-- - `1:16:46`: the second the first input is this the and exit to the base them at the address so now you get the offset into erie then you load from this or erase something the temporary register file from something temperatures to seven so these are these two who values your vk the cape as one. -->
<!-- - `1:17:06`: then you stardom esteem in stardom or at the opposite positions and at the end you you return your jump actually to the the value in the return address excellent so this is actually i think a buck in the book and mostly hidden his life because this talks about an eight ad. -->
<!-- - `1:17:26`: bite in picture encoding but in principle i think langley's should beaches four bytes part and then there should be two and these two should before i think this is because they just copied dislike from the the first version of this require but in any case would you have. -->
<!-- - `1:17:46`: this assembly program of christmas will still be illegal the simpler propane might just not implement this forty or thirty two bit architecture of the book then you take every line here and you can encode it into a thirty two bit machine word so this is the nice thing about this risk five it has a very regular and the. -->
<!-- - `1:18:06`: gene encoding of the assembler. -->
<!-- - `1:18:09`: and it's always four byte long by thirty two bit and then yes we'll also looking at how are you get fight from his partier down here but like a pretty straightforward the encoding on the other hand there's some structure in it which is so that the arc of this whole computer architecture design. -->
<!-- - `1:18:29`: had to get set of these some have operations here and also diskin clothing in such a way that the hartville which seats only these bits here can be implemented fast. -->
<!-- - `1:18:45`: i can now on the computer has these parts like a it has and a control a data path a processor and the memory and input and output is five parts and here's a picture kind of but having said like a factory like metaphor for for this. -->
<!-- - `1:19:04`: use the compiler outside because it's it compiled sort of here or something which is like say a high level program into something low level air and actually it's not shown near this list list here be the kind of process that here is using for doing the control should actually read these. -->
<!-- - `1:19:24`: guys here which is also the data that spikes like troops and then based on this data which is the code that performs like operations on the data path. -->
<!-- - `1:19:35`: those are outside years which we going to talk about in this first chapter is we also need to know how to evaluate the performance of this whole thing. -->
<!-- - `1:19:48`: alright then i mentioned this already before the capacity tif capacitive technology for four screens to produce the touchpads was like a pretty pray through like fourteen years ago and really started this. -->
# ==============1:20:00==============
<!-- - `1:20:07`: a revolution of having a smartphone which at the end and then replace may be these computers we are heading in to. -->
<!-- - `1:20:18`: this is one example an often output then in principle on an abstract level the output the input just wasn't the type of input the output you see your two which is the screen and and this is on an abstract level just like the verb accessed by by a vet. -->
<!-- - `1:20:38`: rain like two dimensional array where you have the the color code like he had this case there for pits which would be sixteen colors but then instead of firmly displayed it'd be more like twenty four bits and you have at a certain x y coordinate like this color code that will be the output. -->
<!-- - `1:20:58`: okay now to some real stuff so this is a a york. -->
<!-- - `1:21:03`: and this is the inside of and you are hateful and within apple a to processor and you see. -->
- ![new_1](./_computer-architecture-20211019_imgs/new_01:21:03_0001.png)
<!-- - `1:21:15`: there's like if you disassemble you see the screen here and this part here this is sort of the core of the heart though and this is the battery i think and then maybe there's some other sensors which i dunno exactly but this part here is highlighted here and i'm in is we cannot see you. -->
<!-- - `1:21:35`: curso a consummate cursor know what i mean beats and the cycles of screening we can see that you're highlighting something which we cannot see what. -->
<!-- - `1:21:44`: you see my mouse. -->
<!-- - `1:21:46`: guess okay then i'm going to use the mouse trench alright so here's this this thing here is highlighted here and need. -->
<!-- - `1:22:00`: yes and and this has all the chips on it so you see hear some audio processing chip is like a battery charger and not sure what that is maybe the the. -->
<!-- - `1:22:18`: the the connection for new by finding the radio but we don't know maybe the very radios are inside here so this is the whole the core of it like it contains a lot of things the eight twelve processor from apple as i said it's like arm-based and then. -->
<!-- - `1:22:35`: hub so there should be a picture from the inside here and then if you zoom into this a twelve you see these this part and he down here there's like the course which means that these two and a disk the disk because here and he. -->
<!-- - `1:22:54`: our small course. -->
<!-- - `1:22:56`: they decided the process was likely going to discuss in this lecture and and you can think of white chip the fours about implementing such a thing and also the one toggle por i showed you before it's like the one of these guys more like this guy like a beaker. -->
<!-- - `1:23:17`: epic arm started to be signed to a smaller and a small course in because the idea is that these guys the media. -->
- `1:23:27`: all very false can do a lot of things in parallel and but i need more power and that's why the episode it'll be clearly designer was called to also have like **small cores on this chip which**.
- `1:23:42`: **do the sort of the smaller sort of low frequency and whatever but you don't need all this compute power...** and this way **safe sort of power at the end** and then if something important has to be done like playing a game then you need to switch this because and then if you talk about games.
- ![new_2](./_computer-architecture-20211019_imgs/new_01:23:52_0002.png)
<!-- - `1:24:02`: see here's this actually and this is now more common also in even evening into there's actually some graphic processing units which is dedicated top down like you can also think of this is part of the diet is finding this to be used course and is actually takes quite a bit of of space here. -->
- `1:24:23`: and then vc your **memory controllers...** like this is for accessing dvd art of the **data datarate ram outside of the chip** and not last but not least you see here in **npu which is a neural processing unit...** is just a name what then.
- `1:24:41`: and like epl is using of you could call it to differently so this is like it cheap to you but it's a dedicated course for just doing a new **deep learning like computing evaluating deep learning models** so they have this already on the chip like an accelerator for may.
# ==============1:25:00==============
<!-- - `1:25:01`: maybe you're you're next you're having for that let's say cod or whatever. -->
<!-- - `1:25:08`: okay now i'm getting to this sub a picture so so. -->
- ![new_3](./_computer-architecture-20211019_imgs/new_01:25:15_0003.png)
<!-- - `1:25:16`: we are having abstractions which allow us to keep things simple right so we hide lower levity too this is the the the the idea of abstraction i need to warn you this is one of my favorite them toms actually there's this concept of leaky abstractions so whenever you do an abstraction it minded the entity. -->
<!-- - `1:25:36`: turns out that a well there's this particular aspect that you need to take too into account in order to get sort of maybe correct but often fast system said in particular really look at this very detailed down in the level of abstractions to get distinct fast and in a certain sense. -->
<!-- - `1:25:56`: is the reason for doing this lecture is exited this so you should be aware there's like a stack of abstractions maybe of trauma will appear and then all these libraries and then at this level you have operating system which talks to the hoffner and and then in the hallway that's sort of like engineering aspects which you may. -->
<!-- - `1:26:16`: might need to take care of all together like a fost program at the very. -->
<!-- - `1:26:24`: and the the the the. -->
- `1:26:29`: **the abstraction which the computing history sort of**.
- `1:26:35`: **committed to is this instruction set architecture** and and **that's kind of the if you think about the assembler language of of the the processor but its called architecture** which is a little bit of a misnomer and that's also why these books are architecture ling y the sort of.
<!-- - `1:26:54`: this. -->
- `1:26:56`: jail here has the name architecture but it's in a sense describing **what's the api, how can you talk to the hardware.**
<!-- - `1:27:05`: and so you to think about sort of your program has this. -->
<!-- - `1:27:10`: commits to this icarly say x eighty six or arm and then he can run on the processor which supports this abstraction however that's not all also the operating system of course needs to run the program and has sort of hooks in there for library functions but also for a cease operating system. -->
- `1:27:30`: excess and this is called **application binary interface how you sort of like your software your program talks with the other software close to the hardware** same you kind of the software on the side then see the application binary a b i there's no acronym nobody should get a guy and then **down you have the abstraction to hardware** do.
<!-- - `1:27:53`: okay then we're having the will to talk about data and i think like this is time that i should stop now and if. -->
- ![new_4](./_computer-architecture-20211019_imgs/new_01:28:06_0001.png)
<!-- - `1:28:07`: there's some questions we can still take it about the subtraction layers and design lebanon struck at the introduction and also sort of this. -->
<!-- - `1:28:21`: processor or maybe some organizational question. -->
<!-- - `1:28:27`: so if there are no questions. -->
<!-- - `1:28:31`: then i would say i thank you for for listening for attending and you will get like the lead to the video in the helios forum very fast and anvil download also the mpeg for fy into the net closet or later. -->
<!-- - `1:28:50`: you're viewing alright so see you on thursday by. -->
<!-- - `1:28:57`: thank you good bye. -->
<!-- - `1:29:00`: i i i. -->
