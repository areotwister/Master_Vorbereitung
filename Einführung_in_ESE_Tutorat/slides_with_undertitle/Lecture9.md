<!-- /home/areo/Videos/Einführung_in_Embedded_Systems/Lecture9.mp4 -->
<!-- /home/areo/Videos/Einführung_in_Embedded_Systems/_Lecture9_imgs -->
<!-- /home/areo/.config/mpv/mpv.conf -->
[toc]
# ==============0:00:00==============
<!-- - `00:00:00`: the air so welcome to earth to the ser lecture on embedded systems. -->
<!-- - `00:00:14`: and this time not from the sidewalk. -->
<!-- - `00:00:19`: but i hope we will nevertheless have a good experience. -->
<!-- - `00:00:24`: just the usual organization slide and the lecture next one in the next year so the next lecture the first lecture in twenty twenty three will again be in presence of course with the usual live streaming and recording one on january ten. -->
<!-- - `00:00:43`: of the exercises we were just proceeds as usual today we will do in the afternoon the solutions of the fourth exercise sheet will really presented so this was material that we discussed last time. -->
<!-- - `00:00:59`: and today you will go through the solutions of the task that are supposed to understand a little bit deeper than the concepts we we discuss last time. -->
<!-- - `00:01:12`: and yeah we have to keep a keep pushing with the exercises saw ton of in in the first few weeks in january there will always be an exercise. -->
<!-- - `00:01:26`: i will try to align this as best as possible with the with the lecture content but it may not be perfect so sometimes you will just hear something new in the morning and the lecturer that will already be discussing the in the exercise and in the afternoon. -->
<!-- - `00:01:42`: this is also a consequence because you asked a forward til for having a mock exam. -->
<!-- - `00:01:48`: orbit closer i just tall jagged feeling fall for the kind of questions you would could expect in the exam and we are currently preparing such a such a mock exam and most likely this will be on ye released and then there will be a discussion session probably in the last exercise session. -->
<!-- - `00:02:08`: of the semester and we will discuss the solutions if this is really not possible due to time constraints we will release the solutions for the fourth floor for the mock exam for sure. -->
<!-- - `00:02:20`: but we will try our best to also have a discussion session so you can ask questions related to the mock exam questions. -->
<!-- - `00:02:29`: alright so let's get started so where are we are we started last time of the chapter on shared resources and we will continue to work on this chapter today and also start the chapter and the next chapters. -->
<!-- - `00:02:44`: so just as a shot repetition last time we discussed what happens if tasks need to share resources and these resources have the access to this resource has to be protected protected by critical sections to ensure the consistency of data. -->
<!-- - `00:03:04`: fractures variables memory for example. -->
<!-- - `00:03:07`: and one of the phenomenon we discuss was priority inversion where the highest priority task he and his picture task tower was blocked by a tool lower priority tas taught to hunt or three and imp in particular the blocking time that was introduced by this completely unrelated task to to that. -->
<!-- - `00:03:27`: was actually not working on the shared shared resource. -->
<!-- - `00:03:31`: and. -->
<!-- - `00:03:33`: yes there will be an exercise to do as i just mentioned in the beginning or we will discuss the solutions for the fourth exit sheet. -->
<!-- - `00:03:43`: and in the afternoon. -->
<!-- - `00:03:46`: he has saw. -->
<!-- - `00:03:48`: yeah so we discuss protein version and this can lead to unbounded blocking times which is of course not what we would like to have in a real time system. -->
<!-- - `00:03:57`: i will not. -->
<!-- - `00:03:59`: ok thanks i will not be able to to always look at the year at the at the chat in real time just breaks the flow completely. -->
<!-- - `00:04:10`: now. -->
<!-- - `00:04:12`: anyways i would try to make some breaks and then we can we can go through i will try to answer your your questions as best as i can and so to her to solve the problem of parity inversion. -->
<!-- - `00:04:26`: people have proposed different access protocols and we discuss just the two of them one of them was the priority inheritance protocol slightly more advanced protocol and here the basic idea was to peyton temporarily change the priorities of the task in such. -->
<!-- - `00:04:46`: actually that unbounded blocking i will for sure not occur you will always have locking times this is necessary just because two task cannot work at the same time on the same shared resource so this is blocking that we actually want but we want to avoid unbound blocking and this is it. -->
# ==============0:05:00==============
<!-- - `00:05:06`: cheat by year by some of these protocols. -->
<!-- - `00:05:10`: and then we closed the last lecture of if you're scheduling or timing anomalies and this just is a one of the slides that we looked at all the examines we looked at that shows that if you have a singular processor and everything is fine you may. -->
<!-- - `00:05:29`: all the deadlines of a given task set and your then you speed up the processor you either speed it up or you use a different processor that has twice the speed of the original processor then intuitively one would expect that she will still be able to meet all the deadlines because you're just executing faster but this example is this very soon. -->
<!-- - `00:05:50`: the sample already showed that this is not true in general this can actually lead to a dead linguist. -->
<!-- - `00:05:57`: especially or a down when you have shared resources so here this speeding up meant that down some blocking was already introduced here and this would keep this task from working on the shared resource before it's deadline. -->
<!-- - `00:06:15`: ok saw the the laster subchapter on shared resources so we discussed the idea that tuscan xs xs shared resource and sometimes they need to work on a shared resource in order to communicate so tasks would like to exchange some signal some data some message with each other because they are. -->
<!-- - `00:06:35`: yeah dependent on some input data that some other task provides for example so he may have a pipeline of task where one task works on some algorithm and the output will then be given to a different task of different thread that works on the following stage of the overall i either room. -->
<!-- - `00:06:55`: and this is what we mean with communication between task you can have very simple communication schemes just maybe just a signal raiders could just be a zero or one and you may have something in your in your in your how hardware architecture just a wire that connects to a gps open and yeah you can set this pin. -->
<!-- - `00:07:15`: higher law in order to communicate between tasks that are running on completely decoupled processes but i told this cookie possible or just a signal zero or one. -->
<!-- - `00:07:27`: here we actually mean that we have maybe one processor and the processor executes made the tasman the threads at the same time and they would like to exchange data. -->
<!-- - `00:07:38`: it would like to exchange a message via a shared shared resource so here we have. -->
<!-- - `00:07:43`: just a very simple example of tool to task to an untold tool that would like to exchange a message miss mts here by sending a message or putting a message into the shared resource. -->
<!-- - `00:07:57`: that will then be read out or received by this other task task one can communicate with pastel. -->
<!-- - `00:08:06`: so this is what we mean with communication or inter task communication and yet this message passing saw your pass a message over to another fret wire shed shed research and again this is a shared resource all as we know from last time these tools cannot access the shared resource at the same time. -->
<!-- - `00:08:26`: time so a task to one should not write a message into the shared resource while the task tool is reading out a message so this could lead to complete garbage. -->
<!-- - `00:08:36`: and and saw the access to this shared resource that is used for passing the message must also be protected by a critical sections which again leads to the problem of priority inversion or can lead to the problem of the origin version and unbounded blocking as as stated here. -->
<!-- - `00:08:54`: and this is of course what we would like to avoid and people have worked on and on concepts to do this and the other the we will not go much into into the details here you just should understand the basic principles and the basic two models are called synchronous and asynchronous communication. -->
<!-- - `00:09:14`: the synchronous one as the as the name already says means that the two tasks that would like to exchange a message have to wait for each other so they have to be synchronized they have to they have to both and at the same time be ready to send the message. -->
<!-- - `00:09:34`: ej and the other task needs to be ready to receive the message this is what is usually called the synchronization is called a rendezvous so they have to find each other in time and be ready at the same time. -->
<!-- - `00:09:49`: and of course if one task starts earlier to send or receive a message then it needs to wait for for the other task that joins later so this is explained here rachel if for example the descending task starts first it cannot send the message right away it needs to wait until the other task. -->
# ==============0:10:00==============
<!-- - `00:10:09`: it's actually ready to to receive the message and what vice versa if the receiver starts first and this can of course lead towards war to block it. -->
<!-- - `00:10:23`: so now if if you have this right saw these two tasks have to be synchronized and so they have to be both ready to to exchange the message then this leads to a very tight coupling of the timing behavior of these two task tasks so the the execution. -->
<!-- - `00:10:42`: one timing of task one not only depends on it's own timing properties how long it takes for example twig excuse to execute certain operation it also depends on what the other task is doing because they need to exchange the message and this is and this is a major source. -->
<!-- - `00:11:02`: of complexity is or leads to and leads to an independence or no relationship between tas and if you just look at the code it is not so obvious right just that they are they are an interconnected or linked because of their at some point need to exchange a message. -->
<!-- - `00:11:21`: and yeah this leads to complexity so this is considered a disadvantage of course. -->
<!-- - `00:11:27`: and this is especially a disadvantage because it is very difficult in a dynamic real time system when you don't know when these tasks are actually arriving or when they become ready to execute it is very hard to actually estimate the maximum blocking time due to this the synchronous communication so how much. -->
<!-- - `00:11:48`: must one task wait for the other at most and and if we had such an upper bound one could take this into account in the aba scheduling and it becomes manageable but since this is very hard to estimate or actually come up within the guaranteed bound. -->
<!-- - `00:12:05`: this is this is a major problem. -->
<!-- - `00:12:09`: there are people have looked at the asynchronous communication and as the name says that basically means that the two status no longer have to wait for each other right. -->
<!-- - `00:12:18`: in the ideal ideal scenario and this very much depends on how the shared shared resource actually implemented so what kind of data structure or strategies used but in principle it is possible to completely decouple the the tortoise and the sender can can as it's written near the sending task and can. -->
<!-- - `00:12:38`: write a message into the shared resource and then just go on with it's own business it just writes a message into the shared shared resource and then continuous vivid spirits execution. -->
<!-- - `00:12:50`: and at some later point in time. -->
<!-- - `00:12:53`: we don't know when the receiving toss actually looks into the shared resource and sees okay hey there's a new new message for me and it reads out the message and it doesn't have to care about this the current state of the task that put the message into the shared reasons so this is a very nice way of decoupling rain. -->
<!-- - `00:13:13`: saw your you as a as a task only need to worry about yourself or you as assistant designer only need to worry about or care about. -->
<!-- - `00:13:23`: the behavior of individual tasks you don't need to think and make now deal with this very complex problem that tousled man might be interrelated. -->
<!-- - `00:13:33`: so this is this is a major advantage so these tasks are essentially independent in terms of timing and yeah if if no unborn delays one can really guarantee. -->
<!-- - `00:13:50`: the vehicle time constraints have to be met and and the complexity still remains very manageable so therefore this this concept is sound. -->
<!-- - `00:14:01`: considered usually in a dynamic real time system if you have a very steady rhythm system where everything is known in advance then yeah it is also possible to work with synchronous communications skin just by making sure that tasks execute in a certain order you have this president's constraints you might remember you can just schedule though. -->
<!-- - `00:14:20`: things and just in such a way that that task don't have to wait for each other and so on. -->
<!-- - `00:14:27`: or that you know what is the maximum waiting time just by looking at the schedule that you that you computed but if tas can arrive youtube in an event from the environment you'll know when this happens. -->
<!-- - `00:14:39`: yeah this asynchronous communication is is what you would like to use. -->
<!-- - `00:14:44`: and the the typical weigh ins will be will now look at tool simple ways or amsterdam two x ways one can how one could implement the the schatz this shared resource in one of the traditional ways is basically a cure is also sometimes called a mailbox so just yet. -->
# ==============0:15:00==============
<!-- - `00:15:04`: does this descending task and this is the receiving task you have in the middle you haven't have a queue or mailbox and this is the the the the top of the queue and this is the the the the end of the job. -->
<!-- - `00:15:18`: and this q of course has a has a given capacity so what is the maximum number of messages that can possibly fit into this queue and here it's in this example it is six so it has a capacity of six and this of course is a shared shared resource it's just some area that is reserved for this queue in in a shed. -->
<!-- - `00:15:38`: shared memory. -->
<!-- - `00:15:40`: and typically this is a first first in first out queue. -->
<!-- - `00:15:45`: right and then you can execute to a tour operation saw the sending task and execute send that inserts a message into the queue so if you are still around that empty it would insert the message and what would be placed at the top of the queue so when the receiving task executes receive it. -->
<!-- - `00:16:04`: extract so it really removes the message that is currently at the top of the queue. -->
<!-- - `00:16:14`: right so this is the semantics of these two operations to send you put put a message into the queue or into this mailbox inbox and receive you'll get a message while after executing this this operation in this message variable you will actually have the content. -->
<!-- - `00:16:33`: off of the message that was currently at the top of the queue of the mailbox inbox. -->
<!-- - `00:16:40`: brian saw what what happens if the cure is is empty and the receiving task would like to receive all and extract the message of course it cannot extract any message because the cure is currently empty thought it will have to and will have to. -->
<!-- - `00:16:58`: goal from from from the running state into the blocks skate state and if it needs to wait until until actually some message is inside the cube before it can continue right so it cannot receive analyst as actually a message in the queue the same happens if the sending tasks would like to insert a message and accuse for. -->
<!-- - `00:17:19`: that also needs to go to the blocking state and needs to wait until there's again space in the queue to insert a message so there you still have gotten bottle times in one elegant way to avoid this is to essentially year so it's it has a very cyclic asynchronous buffer and so. -->
<!-- - `00:17:39`: slightly sort of i dunno misleading name if you want but the main idea behind this data structure is yours you also have some some kind of queue but you always make sure that that there's at least one message in the queue i saw so the last message that you inserted in into the cure. -->
<!-- - `00:17:58`: is is actually still in the queue even though some task has read that message already saw you always make sure that there's some some message in the queue so the receiving task can always read out a message. -->
<!-- - `00:18:12`: and when it reads out it doesn't actually remove the message. -->
<!-- - `00:18:17`: and second important point is that it's you when when the when the when the sending task would like to insert a message it actually overwrites the previous message. -->
<!-- - `00:18:30`: saw this makes it possible tool to design a completely non-blocking communication scheme after the first message has been inserted right. -->
<!-- - `00:18:41`: so therefore that then the sending task never blocks as a new message always overwrites the old one. -->
<!-- - `00:18:49`: so you can never be in a state where this this data structure is actually full. -->
<!-- - `00:18:56`: center never blocks because the cube or this data structure is never full. -->
<!-- - `00:19:02`: same as i already said because the receiving to task doesn't actually delete or remove the message from from the cured only reads out the message without actually extracting it the cure is never empty. -->
<!-- - `00:19:18`: this data structure structures number of empty and therefore the receiving task never blocks. -->
<!-- - `00:19:24`: so this is quite nice and still one has to be little bit careful so some of you may have noticed already saw or if you can read out so if you don't remove the message then you can may actually read out the same message over and over again so you may read out the same message more than once and this is of course possible but this can be easily detected so usually. -->
<!-- - `00:19:43`: every message has as an as an id or you can cute compute a hash over the message and you can just double check that you don't preprocess the same message twice so this is this is possible but your afternoon. -->
<!-- - `00:19:56`: if message duplicates are actually a problem for for what you want to do on the other hand you may also override the message before it has been read out right but this is not a problem in many control applications for example though many control applications and time triggered can time to. -->
# ==============0:20:00==============
<!-- - `00:20:17`: idiotic control applications it doesn't make sense to compute a control signal on some old sensor or based on some odor sensor reading. -->
<!-- - `00:20:27`: you only want to compute core control signals based on the current state of the system so based on on the latest data based on the latest sensory and therefore it is not a problem if old data is actually overridden so now it depends on the application. -->
<!-- - `00:20:52`: nor there there can actually be might the multiple messages in the c a b and i'm not going into into details here. -->
<!-- - `00:21:01`: session essentially a you have you have a dedicated buffer for every single message and this is some somehow here indicated here and when you when when when there's already some task working on on a certain message buffer. -->
<!-- - `00:21:17`: automatically the data structure like the logic behind the data space will make sure that a second buffalo buffalo is actually created where you can insert the new message so it's it's only a problem if if if if a task wants to insert something while some other task is already working on on on the current message. -->
<!-- - `00:21:37`: and of course might of the tasks can read out the same message at the same time so you if you can think of this like like a cube of multiple spaces for multiple messages and there's a careful locked logic that makes sure that everything goes fine if you. -->
<!-- - `00:21:57`: want to read a little bit more about this so i will this is i mean these are these are implementation details that are not so important for for for the actual concepts therefore it's not so much for the exam and if you want to read a little bit more there's a desert there are a few more illustrations in the book by potential so. -->
<!-- - `00:22:16`: there's actually one or two pages about is actually some some c code that implements the cbd section. -->
<!-- - `00:22:26`: when does this end in class alright and went ascended in the cure. -->
<!-- - `00:22:31`: don't really get this. -->
<!-- - `00:22:37`: it only it it it it overrides if no other task is currently working on on the message on this buffer otherwise as if some other task is already working on the messes like reading it it out it needs to create and another bathroom and saw the current messages. -->
<!-- - `00:22:56`: not not over it. -->
<!-- - `00:22:59`: ok saw that this is justin just an example of this could look like in in in free autos let's quickly go through this all year to task and as a q. -->
<!-- - `00:23:12`: that has space four or five integers here and it has i think first infested semantic so if task array inserts and ten in the two cured put at the head of the cure then twenty and then task b the receiving task and can receive or read out the message and. -->
<!-- - `00:23:31`: once it extracts or removes so this is not to see a beat this is a non q and if it's once task b has received and and. -->
<!-- - `00:23:43`: the the the message on the integer at the top of the queue. -->
<!-- - `00:23:48`: so yeah so why then has the value of ten after executing the receive operation as it is indicated here that the that twenty actually moves to the top of the solid stone was actually really removed from the queue saw in free autos as far as i know there's no implementation of the sierra. -->
<!-- - `00:24:07`: b they only have him havoc you. -->
<!-- - `00:24:10`: huh mechanism and to communicate between tasks you can create the cure of course with a good length and so these are the number of items in the queue and the size of each item as the second parameter that you have to specify when you create a queue. -->
<!-- - `00:24:26`: and then you can send or put the message into the queue. -->
<!-- - `00:24:30`: i jar by just providing appointed to the data the the handle to the queue and here there's a sort of this is the last parameter interesting parameter specifies some of the maximum time this task the sending tas will actually be blocked so this makes sure that there's no unbounded blocking time. -->
<!-- - `00:24:52`: i think you can specify as a dedicated value that would make the task block in an unbounded way but you can set it to a concrete value hundred milliseconds one second and then it will only remain in the bloc said and then if it's if if it still blocked after this time has passed. -->
# ==============0:25:00==============
<!-- - `00:25:11`: it will. -->
<!-- - `00:25:12`: returned it it was not able to insert the message into the queue same for for the receiving side you can specify the maximum time to. -->
<!-- - `00:25:23`: yeah and then here there's just so just the final example with three tasks so this there are two sending to us that have equal priority. -->
<!-- - `00:25:36`: and there's one receiving task it has a higher priority to. -->
<!-- - `00:25:41`: and this is sort of the room when you look at the architecture of this piece of software so we have to was sending to us that are inserting message into the queue and one receiving task and this receiving task has the highest bounty. -->
<!-- - `00:25:55`: and at the beginning of the execution this receiving task of course since it has the highest priority it executes first and then it tries to read out the message from the queue but the queue is still empty though there are currently no messages energy and therefore the process a random lease or does this time slice scheduling it's what gives you the equal. -->
<!-- - `00:26:15`: time to to task with the same width of the same priority in here it and decided to to first give send a tour and some share of the bandwidth. -->
<!-- - `00:26:27`: and here at this point in time send a cure egg send her to actually inserts a message into the queue. -->
<!-- - `00:26:34`: and after this this send operation is executed the receiving task can be unblocked and so it goes again and into the ready state because it has the highest priority it goes into the running state it actually gets the processor and can read other message then it tries again to read out another message. -->
<!-- - `00:26:53`: which of course doesn't work because the queue was again empty now as synonyms and no one gets the processor inserts a message which is then read out and so on so they are taking so this is just one example of how this would this would look like and as you can see here you have some some blocking time here and you can specify. -->
<!-- - `00:27:14`: upper bounds on this block unkind time in case there would be no other no sending task ready to to put a message in and to unblock the resilient task. -->
<!-- - `00:27:27`: okay so this was this concludes the chapter on unshared shared resources and all and you may or you may easily see that we are not earth or after seven usually it comes comes eight. -->
<!-- - `00:27:41`: i decided to switch the order and gome have the power and energy in order to keep aligned with the exercises as much as possible and we already talked about hardware components and and if we still have time we will talk about other components at the very end. -->
<!-- - `00:28:01`: of the election so that just in your own interest to keep keep in synchrony with with with the exercises so as you can see and synchronization creates dependencies between different task and one task is the lecturer and the other task is the are the exercise. -->
<!-- - `00:28:20`: okay so some general remarks so why do we care powered by power and energy consumption in in in any computing system nowadays but in particular in embedded systems and i mean there are many reasons and the whole issue of saving energy and reducing peak power is. -->
<!-- - `00:28:40`: it's becoming more and more important just due to the evolution of technology and here listed are some various specific reasons so one of them is just provisioning or making energy available and delivering power is is expensive so just think about the the overhead of replacing a battery. -->
<!-- - `00:28:59`: recycling a battery. -->
<!-- - `00:29:02`: oh dear how tedious it is for you to always recharge your smartphone. -->
<!-- - `00:29:08`: possibly every night or even multiple times a day if you have a rubber old old battery so it is expensive and tedious so therefore you would like to reduce have caused the energy consumption and the second reason is that battery capacity is not really growing as in. -->
<!-- - `00:29:26`: at the same pace as as we saw performance improvements in in process for example saw capacity is growing only only slowly although although many groups and a new materials new battery and supercapacitor designs are being developed so there's a lot of. -->
<!-- - `00:29:47`: research going on but still this the statement here students still holds very much. -->
<!-- - `00:29:53`: and of course as yours is a screenshot saw this as an alert on on your smartphone or some other device these devices can actually overheat and the overheating is youtube power now very high power draw. -->
# ==============0:30:00==============
<!-- - `00:30:08`: leads to very high energy consumption but it also leads to leads to overheating and then you need to cool the that the device saw active cooling on the device simply it says i cannot work anymore we have to stop here i need to for example stop processing this high resolution video that you. -->
<!-- - `00:30:28`: watching or recording so overeating is is another major reason why you would like to keep power and energy and this on a reasonable level. -->
<!-- - `00:30:40`: and last but not least energy harvesting is of course one way to avoid the hassle of always recharging so you can just extract or harvest energy from the environment classical example is some solar panels on our houses but also yeah i have here a very small prototype. -->
<!-- - `00:31:00`: of a battery free io t device so it has a solar panel and at the device can can harvest energy from the solar panel but if i am using this this indoors desert very low energy density of of indoor light for example or outdoor outdoor lights or sunlight has a very relatively. -->
<!-- - `00:31:20`: high energy density but indoors it is very very limited or if you if you try to harvest energy from vibrations so imagine you have a piece or piece or element and you're you're you're trying to harvest from vibrations while a human is walking right all you have to. -->
<!-- - `00:31:40`: something embedded in your shoe in in your running shoe for example that is able to harvest from from the pressure of of of each step. -->
<!-- - `00:31:50`: and there's a lot of research also going on in this area but still the amount of energy that you can extract is is usually very very limited. -->
<!-- - `00:31:59`: it depends on on on the frequency of these vibrations how well the harvester is tuned with the vibration spectrum of of of the system of a human for example when you are walking and so on and so forth so there it is very limited and therefore of course you would like to use. -->
<!-- - `00:32:20`: the energy that you were able to harvest you would like to use this energy as efficiently as possible. -->
<!-- - `00:32:30`: yeah this is just dumb. -->
<!-- - `00:32:32`: just the plot to me also illustrates the issue so you can see here a plot soaring over time so does this does this time i mean we are now a little bit further here but so i think it goes up to twenty seventeen but the general trends to the horse so you can see that the overtime the. -->
<!-- - `00:32:52`: here though the total number of active elements in your cpu that can actually do some processing keeps increasing so this is like the number of processors keeps increasing but if you look here now at the at the green dots you will see that that the frequency at which the the processor sir operating. -->
<!-- - `00:33:12`: is no longer increasing so it's actually a plateau here right. -->
<!-- - `00:33:17`: and the main reason is that that the power draw increases as the operating frequency increases and which is so it's usually limited to around one hundred watt as you can see here just due to the overheating right. -->
<!-- - `00:33:34`: and so on so on the frequency ends and the power and these processes can can operate is essentially limited by the amount of heat that you can. -->
<!-- - `00:33:49`: and you can dissipate or or take away from from these elements so it's actually a year and though it it's not so not only is or reducing power is not only about exchanging batteries less often and making it more comfortable for you but it's also about limiting the. -->
<!-- - `00:34:10`: the the overheating. -->
<!-- - `00:34:12`: to avoid auto failures bit flips for example in your memory or wrong call computations because the process is just too hot and also to reduce the costs of of acquitting so therefore the watts are no longer increasing in frequency and you haven't had a plan to me. -->
<!-- - `00:34:31`: but of course her last important what you can see is that the so the the transistor count keeps increasing and this is because we are we have more and more parallelism in these architectures so the the the number of logic of course that that are operating in parallel this was encrypted. -->
<!-- - `00:34:53`: and this of course allows for a higher performance but it also allows as we will see today by having a higher power will listen you can actually reduce the energy consumption of that the energy that is that is needed for a given task the valid sacrificing the performance. -->
# ==============0:35:00==============
<!-- - `00:35:13`: so by by using more processing elements in parallel you can reduce the overall energy consumption for a given task such as processing one thousand pictures but you still can do this within the same time. -->
<!-- - `00:35:29`: okay so what are the what are the of the implementation choices and the tradeoff between flexibility of what you can do with a with a computing architecture and and it's energy efficiency and performance or yeah and this this is illustrated here on the slide-in. -->
<!-- - `00:35:46`: and let us first look at the at the extreme so if you're just use like a general purpose cpu in your laptop. -->
<!-- - `00:35:55`: this year at the top and on this you would essentially implement everything in software and you can essentially implement any given either room that you would like to execute you can implement this and suffer on on this general purpose processing. -->
<!-- - `00:36:14`: the other extreme would be to do everything in hardware so this is here at the bottom so you design a very specific circuit. -->
<!-- - `00:36:23`: that can. -->
<!-- - `00:36:25`: operate or or executed or provides a given function so instead of implementing this in software you design a circuit that does exactly the same in in hardware so in principle this is possible for every give modem coarser it becomes more complex and bigger and bigger but now this is actually. -->
<!-- - `00:36:46`: being being done for for certain functions so and of course if you're if you're implement can everything can be implemented in software this provides very high flexibility so we have a very flexible overall architecture but of course this is very what can be very very enough. -->
<!-- - `00:37:06`: efficient whereas if you do things in hardware you'll get usually the the the highest efficiency and you can also keep them the power and the energy extremely low right so you have very high performance and higher energy efficiency but of course once you have implemented and and you have produced the circuit it's very. -->
<!-- - `00:37:26`: very difficult or even impossible to change so the flexibility is is very very low. -->
<!-- - `00:37:32`: and there are some intermediate to points and some of you may have heard of if pjs or c o p d so this is disarm devices that way you have sort of a appropriate programmable hardware so you can program or define in software how how the different. -->
<!-- - `00:37:52`: elements are actually interconnected so you can you can build circuits and how how the circuits should look like or is as defined in software and you can auto re re re reprogram the circuit so this is the basic ideas or very high level of f f pjs so this already provides higher higher flow. -->
<!-- - `00:38:12`: stability compared to a six but still has a has a pretty good efficiency. -->
<!-- - `00:38:18`: and microcontrollers also very special and dedicated signal processors is is another option so they have very specific instruction sets for example for doing matrix operations for doing signal for processing at f t's video and image processing are examples where. -->
<!-- - `00:38:38`: one one can buy air or ye said shown signal processors are produced. -->
<!-- - `00:38:47`: right and then usually what you have in a in a in a real architecture today you usually have a combination of of these of these different elements or sometimes you have a dedicated circuit for a very specific task to this very efficiently usually have also a general purpose cpu of orchestration. -->
<!-- - `00:39:06`: as for management things for actually running the operating system dsp is also very common to do warrior image processing key generation random number generation all of this is sort of jar it's an interplay between hardware and software. -->
<!-- - `00:39:23`: alright so this is another plot that that essentially is illustrates what we have shown here in a bit more abstract way with some concrete some concrete numbers again apologize and this is all a plot but if sometimes is not so easy to find in your plot that that shows such a nice and. -->
<!-- - `00:39:41`: you applaud that shows what i'm actually trying to to to tell you here so here you have a half overtime. -->
<!-- - `00:39:51`: this is overtime and here on the y axis we have and have a metric that's the number of zones in the billions of of of operations produit so there's an energy efficiency metric and you would like to that the overtime of course you would like the energy efficiency increases. -->
# ==============0:40:00==============
<!-- - `00:40:10`: and here you have of four lions essentially so one is for the general purpose cpu is impure cpu so does it for the general and cebu's it's it keeps increasing but you can also see that that these digital digital signal processors are more energy efficient. -->
<!-- - `00:40:29`: the pjs are more energy efficient and the highest efficiency per so that was the highest number of operations per jews actually enabled if you knew of everything in hombre but of course you would like to have some flexibility and therefore as written here on the left side and typical architectures today. -->
<!-- - `00:40:49`: exploits heterogeneity you have a combination of these two and the specific components and the fraction of what is general purpose and what has been done in hardware depends very much on the application as usual in embedded systems so this is what we mean and we said this several times you're special. -->
<!-- - `00:41:09`: lies your hotmail architecture for for what you need. -->
<!-- - `00:41:14`: your exploit parallelism to reduce energy and power depending on your application needs you can turn off components very effective way heterogeneity end of course as we will discuss today bludgeon frequency skin. -->
<!-- - `00:41:29`: ok so let some dive a little bit deeper into power and energy and before going and going too deep let's let's start with something that that i hopefully many of you already know are still remember but since it's still very often confused also in the in the law. -->
<!-- - `00:41:47`: literature i'm i'm starting with with the basic here so you know that power is is the product of voltage and and current and and. -->
<!-- - `00:41:59`: you can measure the power at a specific point in time so overtime here for example at at a specific point in time let's say here you measure a given given given path so power is the product of voltage and current and it is it is the value so it's the product of these two values at a given point in time. -->
<!-- - `00:42:20`: therefore auto power is an instantaneous quantity. -->
<!-- - `00:42:24`: and therefore usually also i don't like the word power consumption because you cannot consume power power is an instantaneous quantity you will still see power consumption on the slides because it saw yeah it has become so common to talk about power consumption but it's actually more accurate to say. -->
<!-- - `00:42:44`: a power power just power or power draw you draw some power so it's an instantaneous quantity and then if you have multiple such such a power values over time so let's say you're executing something some other room. -->
<!-- - `00:43:01`: your computing task to one in your ear time system that is doing some image processing right and here you will start the execution of the task and hear your finished execution of the task and of course the the power that has been drawn by while executing the task may change over time. -->
<!-- - `00:43:21`: as illustrated here by this curve and an energy is then all the area below so the energy that you consumed for the execution of the task is as the power under the scruff so it's it's the integral or some. -->
<!-- - `00:43:35`: if you were a member from your high school days integral and so it's actually the the area you're below below the power curve. -->
<!-- - `00:43:43`: and yeah the im just throwing an energy bill yards i needed it i consumed one jew or ten tendrils it's it's not very meaningful. -->
<!-- - `00:44:00`: the value is only meaningful if you save for what you actually consumed or for what you needed this this amount of energy and then you can compare right so i needed a one hundred jewel to finish the given task and you needed one hundred and two jewels to finish the same task then you can. -->
<!-- - `00:44:19`: compare. -->
<!-- - `00:44:21`: so it's always important is as written here that you will provide the context for what you actually need need the energy so let's assume that we are running at a certain speed the process runs at a certain speed and of course there's always holds. -->
<!-- - `00:44:37`: and we need a certain energy to finish the task so now if you if you speed up the processor let's say you are running with a higher frequency than this mayor. -->
<!-- - `00:44:50`: yeah this leads to a shorter shorter execution time saw the due till you finish the task earlier. -->
<!-- - `00:44:59`: and this means that you'll actually use less energy right. -->
# ==============0:45:00==============
<!-- - `00:45:05`: the problem is however that usually when you speed up the processor so we start again with the original task when you speed up the processor so in order to finish things earlier you also need to ink you also have a higher power. -->
<!-- - `00:45:20`: so when you want to execute with a higher frequency as we will see in the minutes you this means that you will have to operate at a higher voltage. -->
<!-- - `00:45:29`: in order to get actually this speed up. -->
<!-- - `00:45:32`: therefore the sort of you have a have higher power draw throughout the task execution and therefore the area below the curve may actually be larger than the iowa below the curve when we executed with the slower process so doing things faster and finishing things faster doesn't mean necessarily. -->
<!-- - `00:45:52`: the that you'll save energy. -->
<!-- - `00:45:56`: because you have this connection between the operating frequency of the processor and the the voltage and that the supply voltage that needs to being applied. -->
<!-- - `00:46:11`: okay i nevertheless do. -->
<!-- - `00:46:15`: i mean this is interconnection so you have this connection between propellant and energy wire this formula but both it is important with the skin distinguish between power and energy because it impacts the system design in different ways so different aspects of the system design. -->
<!-- - `00:46:32`: and so some of them are related to power and some of them are related to to energy for example the design of the power supply and why the regulators also the the virus that are used to connect the battery like the power supply of the hardware components this very much depends on on the power consumption or power draw so i will keep using polygon. -->
<!-- - `00:46:52`: assumption even though i intellect saw at these. -->
<!-- - `00:46:58`: these components are very much depend not on the overall energy that the system consumes it really depends on on the power on people for example. -->
<!-- - `00:47:09`: that the system may actually need and also according power higher power leads to a lot of heat and then you need to think about short term cooling which is costly and requires lots of space so these aspects are example aspects that are very much related to two to the power profile of your system where. -->
<!-- - `00:47:29`: as energy is more related to yeah what is the capacity of of the battery that i need. -->
<!-- - `00:47:35`: it is also related to how much energy i can actually harvest from from from the environment all these expect aspects so the availability of energy at the cost of of actually provisioning energy maintenance of batteries and also the lifetime of your system right so i mean the smartphone is not very useful. -->
<!-- - `00:47:55`: and it only lifts for for one hour and i ot central like like this one that you embed into some structure like like the waller you'll don't want to dig out the censor every year to replace the battery saw this thing should actually last ten twenty thirty years and just to reduce the maintenance costs soared. -->
<!-- - `00:48:15`: these all these aspects are related not to power it's it's mostly or primarily related to energy consumption. -->
<!-- - `00:48:24`: okay so this is susan this is some general and context so let's do. -->
<!-- - `00:48:31`: let's go a little bit deeper here and and ok we will not go to the but just for you to have some understanding of what follows let's look at where where is actually the power going so where do we actually lose power in in our in our system and they are one can. -->
<!-- - `00:48:51`: distinguish between dynamic aspects or dynamic losses and static static losses. -->
<!-- - `00:48:59`: and here that is just a simple simple seamless skaters an inverter or saw you apply a certain input and the output is then the inverse of of the given input and these are two transistors here and there are two sources of dynamic and losses and on the next slide there they are summarized. -->
<!-- - `00:49:19`: but here's sullivan and a picture that illustrates where where where this is coming from so one of them is saw if if you switch switch the input so you just change the state of the inverter because you're doing some computations this relates to changes to switches in the input is of course also switches the output in one can. -->
<!-- - `00:49:39`: think of that due to the due to the the wiring between the different seamless gates and also the input capacitances of these gates one can think of of his spurious capacity essentially that is sort of present in these circuits and whenever you're you you switch the input. -->
<!-- - `00:49:59`: but and then also the output this capacitance is actually charged and discharged so you have some charging in this the discounting of these capacitances which leads to to a switching current so it's there's a current flowing and this and this current i i sw that that flows when you charge and discharge these capacity. -->
# ==============0:50:00==============
<!-- - `00:50:19`: this is of course a loss so this is one source of dynamic loss. -->
<!-- - `00:50:27`: the other one is that you're in the switching. -->
<!-- - `00:50:31`: in very short moment in time where were and these two transistors actually us or there's a there's a very moment in time where you have some crosscurrent or some short circuit joined i i in that is flowing from this pliant tool to to ground it's only virtual moment but it's still something that's that. -->
<!-- - `00:50:51`: happens in it only happens dynamically so when things are changing now when when we have switching when the system operates and has an impact on on the input input output we have the charging and discharging here and very short moments where there's actually a current auto flood. -->
<!-- - `00:51:08`: so these are the two sources of of dynamic losses and yet the major aesthetic last saw when even when nothing is changing there's no clock signal there's no switching and if if if but if a if the system is actually connected to power that the. -->
<!-- - `00:51:28`: as some some there are some leakage occurrence and you don't have to remember all of them so there's this small gate was called gate oxide leakage there's a small current flowing here there's autism so even if the switch year is close there some sub fresh old a leakage that is flowing here and there's also some juncture current so there are. -->
<!-- - `00:51:48`: three different major leakage currents that are the are losses even when this system is yeah not not not not actually operating. -->
<!-- - `00:52:00`: so and this is summarized here when i just said the two major sources of dynamic power power losses or power consumption the charging this of the capacitances the short circuit and these other the three different. -->
<!-- - `00:52:16`: leakage currents. -->
<!-- - `00:52:19`: and this leakage so them the purpose of the slate is to show that that this the steady power numbers is actually becoming pretty important so if you look over the years we know that the technology became smaller and smaller so it essentially means that the gate length. -->
<!-- - `00:52:36`: and the gate length is is. -->
<!-- - `00:52:39`: reducing the you're you're putting more and more elements are on on the same amount of space therefore also the wires become smaller the distance become much much smaller and this leads to a rum addressing increase so as the gate length goes down also the sub thresholds of some of the leakage engine. -->
<!-- - `00:52:59`: function current so soft fresh and injunction leakage currents are actually increasing which leads to a higher static loss compared to two earlier processes. -->
<!-- - `00:53:11`: yeah. -->
<!-- - `00:53:13`: ok so we will only discuss one one way to reduce static power so aesthetic power was yeah we have all these currency of knowing these leakage currents when when the gators actually connected to to power but it's not actually used so it's connect to power but it's it's not your solid sorry it's a very obvious way then ok. -->
<!-- - `00:53:32`: if i don't need this specific copper component why not just turn it off red saw you'd just remove the power and this is called a palace a powerplay a gay things or you remove it remove the power supply temporary literally when it's component is not is not needed and this is actually being done. -->
<!-- - `00:53:52`: on on on on these my controller so we already discussed about low power modes lpn zero epi and one and these low-power modes essentially. -->
<!-- - `00:54:04`: correspond to different configurations in which different hardware components are on and summer off and the lower the low power mode the more of these harbor components actually switched off to reduce the. -->
<!-- - `00:54:22`: reduce power and therefore the the energy consumption of of the damage. -->
<!-- - `00:54:28`: yeah so this is this is essentially the the most effective way to and to avoid leakage. -->
<!-- - `00:54:37`: to reduce that dynamic power we need to go a little bit. -->
<!-- - `00:54:42`: we need to understand instead of the main relationships here and don't be scared i chose the simplest model possible and that still contains the main dependencies. -->
<!-- - `00:54:57`: so and here we will now ignore any any static static leakage so in an aesthetic or losses so there is no leakage we only look at at the. -->
# ==============0:55:00==============
<!-- - `00:55:09`: and the power consumption of a cmos grade when it is dynamically operating so there are switching activities going on and the simplest model that you can think of is that the that the poem the instantaneous power draw of of of the circuit. -->
<!-- - `00:55:27`: is proportional to to this load capacitance so what is low capacitance this was this one year now so just due to the the wiring between the gates and the input capacitances there's a certain load capacitance that is essentially constant once you have have the layout of. -->
<!-- - `00:55:47`: of your circuit. -->
<!-- - `00:55:50`: so the power is proportionate to this a lot capacitance is proportional to the square of the supply leverage which will be our main and turning up in in the following. -->
<!-- - `00:56:03`: it's also proportionate to the operating frequency so that that's the clock frequency and there's also this this over here and i find the times times the clock frequency is something like ok how much switching is actually going on in the gate so if if i if i is is one so one times a. -->
<!-- - `00:56:23`: means that you have have a switch on the input and the output off of the cmos circuit of the gates at every clock cycle so there's a lot of activity going on if i've had is is one if i would be would be zero then the whole thing would be zero because there's no switching us or we are ignoring a leakage a steady current. -->
<!-- - `00:56:43`: or so usually i have i have some fare somewhere between zero and one and this depends of course on on what you are actually executing what task you're you're you're executed so you'll need to remember all of this suggests remember that the clock frequency this is f time some. -->
<!-- - `00:57:04`: parameter that is specific to your either of them that you're operating that actually useful and and and the product of these of these two denotes how often you actually have some switching so how dynamic are you operating the circuit. -->
<!-- - `00:57:18`: okay so if you now look at this formula you'll you'll see okay now the goal would be to reduce reduced the power consumption saw and how do you reduce the power consumption and if you would reduce the voltage. -->
<!-- - `00:57:38`: you can massively reduce the power consumption so one could think okay let's just reduce the voltage law and keep make it laugh and laugh and laugh and i will i will have a have a really minimal power consumption. -->
<!-- - `00:57:54`: but unfortunately this has a certain limit. -->
<!-- - `00:57:59`: because the and the supply voltage is also related to the delay of of the sema circuit so how long does it take until a switch switching of the input actually appears on the output it is not instantaneous it takes some time in. -->
<!-- - `00:58:18`: this is what we mean with the delay talia and this delay are also depends on and on supply voltage and one can simplify this former formula a little bit because usually the threshold voltage is much much smaller than the supply voltage so you can simplify this tool to see a divided by. -->
<!-- - `00:58:38`: video. -->
<!-- - `00:58:40`: so what does it mean it means that okay we can reduce the power dramatically or quite radically by reducing the supply voltage but when we reduced the supply voltage the delay actually increases so if this number here become smaller and smaller the inverse or c a divided. -->
<!-- - `00:59:00`: by this becomes bigger and bigger so it takes more time until the input actually propagates to the output. -->
<!-- - `00:59:07`: and this again has an impact on the frequency at which you can on the clock frequency at which you can operate the circuit so it has an impact on on the maximum operating frequency of the circuit and this is what i've shown here and on the very bottom so this is f max is the maximum operating frequency. -->
<!-- - `00:59:27`: and it's it is inverse inversely proportional to to the delay of of of the circuit. -->
<!-- - `00:59:35`: so it is proportionate to avidity divided by air by the lord capacitance. -->
<!-- - `00:59:42`: so to summarize and summarized here so what are the key takeaways of this model and this model represents the main relationships that are actually happening in practice so when we reduce the supply voltage we can drastically reduce the power but we also reduce the gate delay and this means that when we decrease the. -->
# ==============1:00:00==============
<!-- - `01:00:01`: a player that we also decrease the the maximum frequency at which we can operate so this is sort of the of the earth sort of informal statements or when you reduce the voltage onto their lower the power. -->
<!-- - `01:00:17`: it also makes the system slower. -->
<!-- - `01:00:20`: indefinitely so therefore you have this very jar it's not really a direct connection but yet you have this you have this into place or you cannot you cannot reduce the voltage without reducing the frequency or you cannot so when you increase the voltage you can also increase the frequency and this is again relay. -->
<!-- - `01:00:41`: i this expression you to the pa. -->
<!-- - `01:00:46`: okay so this is just a summary of what peters said though this is power related to the formula that we have already seen yet. -->
<!-- - `01:00:57`: and oh yeah if you just multiply this by the time that you need to execute a given task then you get the energy that that is needed to execute a given task. -->
<!-- - `01:01:07`: and one can sort of slightly and. -->
<!-- - `01:01:11`: rearrange this formula and so if this is the number of cyclists the number of operating cycles that is needed by your either of you have implemented then either riven like a sorting algorithm or whatever and it has and executes for a given number of cyclists then then this term in in front here is the energy that. -->
<!-- - `01:01:31`: is needed per cossack. -->
<!-- - `01:01:36`: okay. -->
<!-- - `01:01:38`: yeah. -->
<!-- - `01:01:41`: usually what what what you can play with as the as the. -->
<!-- - `01:01:46`: as the supply voltage low capacitance i mean you couldn't try to reduce by rearranging things in your circuit but usually this is this is constant and once you have optimized your algorithm and it really needs the minimal number of cycles also the number of cyclists as a sort of desert certain lower bounce or so the main main tuning. -->
<!-- - `01:02:06`: not that you half in order to reduce the power and the energy consumption is is essentially either the supply voltage. -->
<!-- - `01:02:14`: and we will now look at look at two or two static forms off of reducing power and energy by exploiting parallelism and pipelining so we have now seen the these major relations and now he looks okay how can we reduce power and energy on how can we reduce energy. -->
<!-- - `01:02:34`: consumption by exploiting this this relationship here. -->
<!-- - `01:02:42`: so let's so this this looks rather simple but it's it's actually not not that not as simple if you think about it for the first time but i will try to explain it as best as i can so let's let's assume you haven't had a single single processing element. -->
<!-- - `01:02:58`: and yet some processing element and that is processing an input inputstream so each arrow is some picture for example and this is an image processing algorithm that runs an accident on a certain processing element. -->
<!-- - `01:03:16`: and this is the output and this uh this processing element has a supply voltage of midi d'un operates as at a certain frequency and maximum frequency. -->
<!-- - `01:03:27`: so the the energy that is needed for for finishing so for processing all all these pictures let's say one thousand pictures and the energy that you need to to process all these one thousand pictures with this hardware architecture here is eat he won. -->
<!-- - `01:03:46`: so. -->
<!-- - `01:03:47`: now if er. -->
<!-- - `01:03:49`: in on the right side here. -->
<!-- - `01:03:52`: what what are we doing here we instead of one processing element we have two processing elements we have this this dark darkrai and the light grey element and these two processing elements don't run at bdd they run at half the supply voltage. -->
<!-- - `01:04:12`: therefore also at half the frequency you remember from the previous lay the desert connection we cannot reduce the voltage without also reducing the frequency so let's assume these two processing elements are completely identical they can do the same as the original processing element we just now have two of them two of them. -->
<!-- - `01:04:32`: and they are we operating them at half half the supply voltage and therefore as a half after the frequency. -->
<!-- - `01:04:39`: and now since they are they can operate independently on an hour one thousand pictures we can give one picture to the grey processing element darker than the second picture to the light gray the third picture again to the dark rare then the fourth picture to the library and so on so we have a have a parallel. -->
<!-- - `01:04:59`: processing of of all these all these pictures. -->
# ==============1:05:00==============
<!-- - `01:05:05`: so what is now the deer the energy energy consumption right. -->
<!-- - `01:05:11`: so. -->
<!-- - `01:05:14`: of course because the the frequency is huffed we now take double the time to finish the processing of a single picture so here it took just this amount of time now we are running at half the frequency at half the speed it takes. -->
<!-- - `01:05:33`: it's the double amount double the amount of time. -->
<!-- - `01:05:38`: but it since we have this relation here that the energy is proportional to the square of the supply voltage and now we reduce ought to be half the supply voltage and therefore we need only one fourth of the energy to process a picture. -->
<!-- - `01:05:58`: right so it's only one fourth of the energy that is needed to process a single picture. -->
```python
v=1
(v/2)**2 == v**2/2**2
```
<!-- - `01:06:06`: also the other one uses only one fourth of the energy to process is in the picture but now since they are running in parallel so while one is processing a picture the other one composite picture so overall the execution rate so the rate with which. -->
<!-- - `01:06:24`: which these two elements produce outputs here so if you just observe okay what is the time they need to to produce a new output it is the same time as he so they are they are they are processing pictures at the same rate with the same delay overall because they are they are their result. -->
<!-- - `01:06:44`: each of them operates at half the frequency half the speed but since since they are operating in parallel overall they are they achieve the same execution speed. -->
<!-- - `01:06:53`: so in summary this means that you're on the right side we get the same performance. -->
<!-- - `01:06:59`: the same rate with which we can process the pictures but we only use one fourth of the energy. -->
<!-- - `01:07:09`: and this is one example of of a static way aesthetic way of so we have steadily reduced the the voltage and the frequency. -->
<!-- - `01:07:20`: and then we exploit parallelism to achieve the same performance at. -->
<!-- - `01:07:25`: a much lower energy consumption. -->
<!-- - `01:07:31`: okay and the same can be can be done with pipelining so here we had things in parallel now let's say we have our algorithm can be divided in and can be partitioned in two stages so there's a first stage of the algorithm that does now. -->
<!-- - `01:07:48`: or something. -->
<!-- - `01:07:50`: and then there's a second stage of the owing room and we can have now one processing element that only takes care of the first half of the either rhythm and a second processing element that that takes care of the second half of the argument. -->
<!-- - `01:08:07`: and again we operate both of these elements are only half the voltage therefore half the frequency and so they are they are slower and they need to double the time and once this one he produces an output desert memory is there some storage element tool to store. -->
<!-- - `01:08:27`: the output that is then used by by the second stage to compute the second half of of of the. -->
<!-- - `01:08:35`: and then what what one can see here is that ok we are operating at half and half the voltage. -->
<!-- - `01:08:46`: though until we get get a good sub so the energy that that we need so due to the future this is only one fourth but all but but but also only one fourth but also this blog here only executes half of the sacred so we have partitioned all. -->
<!-- - `01:09:04`: written in the first file in the second part so the number of cycles that we are executing here in this block is is half of the sega said we need for the overall algorithm so the energy that we need here in for the focus or for each picture the energy that is consumed for each picture in this first block here is why. -->
<!-- - `01:09:24`: one eighth of the energy that is needed here for for a picture but of course it has two stages or one eighth plus one eighth is one fourth so again we have one fourth of the energy that is needed overall for every single picture and again we get the same. -->
<!-- - `01:09:44`: execution rate the same output rate here as we got here so it's exactly the same story im of parallelism and pipelining and yeah if you are a little bit aware of what's going on in in the literature you know that this is actually exploited in many processes saw there's something that is called very. -->
# ==============1:10:00==============
<!-- - `01:10:04`: long instruction bit architectures where the compiler at compile time offline. -->
<!-- - `01:10:10`: checks which kind of instructions can be executed in parallel if this is supported by the underlying hardware of course and if that's the case then yeah you give each instruction to a different hunt by unit. -->
<!-- - `01:10:24`: exactly what is shown here and then these instructions can be executed in parallel. -->
<!-- - `01:10:31`: and of course you also have pipelining saw does this yeah pipelining is so there's just a picture of a of a of them the architecture of an old galaxy s aid. -->
<!-- - `01:10:46`: if the federal genie of the heterogeneity in this architectural d piece dedicated units for four graphics for the modem some general purpose cpu for me for audio when if you just zoom in here at this hexagon you will have care of the units so you have an instruction cache and then you can. -->
<!-- - `01:11:06`: execute instructions in parallel by giving them to these have four units and you also have ya and here. -->
<!-- - `01:11:14`: deeply pipelines or vectorized or pipelined execution stages here. -->
<!-- - `01:11:21`: as your mayor i hope know from computer architecture and analytics okay so in practice both parallelism and pipelining is is exploited and the main idea is not only to increase performance but sometimes actually to achieve the same performance at a much lower energy consumption. -->
<!-- - `01:11:41`: so these were forms of aesthetically retreat decreasing the voltage and the frequency to decrease energy consumption. -->
<!-- - `01:11:51`: by changing the hardware architecture so that's why i am writing you it's sort of aesthetic way it's not not something that happens at runtime. -->
<!-- - `01:12:01`: next now we will talk about strategies when you adapt something at runtime i saw you are on. -->
<!-- - `01:12:10`: you are operating the system and dynamically at runtime you would like to change the the supply voltage and the frequency remember the title and interconnected in order to minimize minimize energy consumption. -->
<!-- - `01:12:26`: and yeah this is called dynamic biology and frequency scaling and does is also being done in your laptop and and autism and embedded systems and yeah this just a summary of of the formulas that we you have already seen and so i guess i don't need to repeat this. -->
<!-- - `01:12:43`: and again applaud the chose that when you increase the supply voltage the energy consumption per cycle to this the energy consumption per cycle year increases gret quite dramatically so increase the supply voltage the energy consumption per second increases quite radically. -->
<!-- - `01:13:05`: and the operating frequency increases linearly because we have these two relations we have discussed before. -->
<!-- - `01:13:14`: okay so now now let's let's say we have have a given given task let's go yet so we'll all go through a fruit for an example tool to illustrate something and the the goal is that you have a given task. -->
<!-- - `01:13:30`: some image puzzling task and this tasker needs to be done within a certain time so we have a deadline essentially so we have a relative deadline and. -->
<!-- - `01:13:44`: to make things concrete to these are carefully chosen numbers just saw that things are more easy to calculate and also for you to understand so let's suppose that we have a task that needs to tend to the power of nine swords neap nine billion nine billion cycles. -->
<!-- - `01:14:02`: and it needs to finish within twenty five seconds so it's a rather relaxed deadlines or here deadline twenty five seconds. -->
<!-- - `01:14:10`: and we have a processor that can operate as we can operated in at three different weather just saw at fry foot forwards and two point five loads and this is the related operating frequency so as you can see it's mhz and of course nowadays we are talking about gearheads. -->
<!-- - `01:14:30`: but just for the sake of this example and make things simple let's say we are running and then at fifty forty and twenty five mhz so as the supply voltage goes down altered the frequency goes down it has to load on the maximum operating friends and the energy per cycle as we reduce the supply voltage the end. -->
<!-- - `01:14:50`: eg per cycle goes down quite radically so he hits forty nine a jewel and at the lowest it's only ten knowledgeable per second. -->
# ==============1:15:00==============
<!-- - `01:15:01`: and of course as your reduced the frequency also the sacred time increases so you need more time to execute one of these. -->
<!-- - `01:15:10`: and ten billion seconds okay so how can we do this so remember the goal is we want to finish this task before the deadline but we would like to reduce the energy that we need to do this so we want to be on time we want to meet the constraint of we want to make make the. -->
<!-- - `01:15:30`: application happy but you also would like why would like to make the user of the smartphone for example happy on which does this task execute by making the battery lifetime longer. -->
<!-- - `01:15:44`: so meet the deadline and at minimum energy consumption and one strategy one could try is to finish the task as early as possible. -->
<!-- - `01:15:58`: so afterwards i can turn off so i don't need to consume any any energy anymore. -->
<!-- - `01:16:04`: so how would this look like you would execute for twenty seconds at the highest frequency is the highest supply voltage and afterwards for the last five seconds your don consume any energy and so we're just looking at the dynamic hour here so what does the energy that did we need so you just need to multiply the. -->
<!-- - `01:16:24`: number of cycles times the energy per cycle times the time that you need. -->
<!-- - `01:16:32`: right. -->
<!-- - `01:16:36`: yeah not really this is just warrior this is this is because this is in natural disasters tend to the power of man just to get to the proper unit so this is the number of cycles times the energy per cycle in the manager and nano is ten to the power of mine is nine so therefore overall the energy that. -->
<!-- - `01:16:54`: you need if you when you try to finish a task as early as possible and then to go go into a zero energy mode is footage on. -->
<!-- - `01:17:04`: so the second strategy we might try it is is the following do your you try to do something. -->
<!-- - `01:17:14`: and afterwards your operates the processor at the lowest possible frequency so i mean here we finished earlier why not just finish things right on time and you're you're trying to use two different voltages the maximum voltage in the beginning and then. -->
<!-- - `01:17:35`: just when it is when when they are still just sufficient time to do the rest at the minimum frequency that the minimum voltage you use switch to the second fudge. -->
<!-- - `01:17:47`: so and if you're doing all the calculations saw you will have to do around seven hundred fifteen million cycles at the at the highest wattage. -->
<!-- - `01:17:56`: and then the remaining two hundred and fifty million seconds at the last voltage at the lowest frequency none if you will compute the overall energy it is law and its year he had forty jaw and here we see it as a thirty two point five. -->
```python
def num_cycles(f, t):
    n = f * t
    return n

num_cycles(f=50, t=15) ❯ 750
num_cycles(f=25, t=10) ❯ 250
```
<!-- - `01:18:12`: so is this already optima. -->
<!-- - `01:18:15`: well it is not optimal i saw do the best strategy actually is to choose an intermediate voltage. -->
<!-- - `01:18:23`: this the only voltage that is left is is four so you could could have guessed set of four for this example how does how the story goes but here too just to prove or see that is actually true for this simplified example if you operate execute the entire task. -->
<!-- - `01:18:44`: the ten minute billion cycles at the intermediate voltage then you get the minimum energy consumption. -->
<!-- - `01:18:52`: so it seems like it is not good to switch between watch why touches unnecessarily well so if you have a given task it it's seems that as it is always best to keep at an at an intermediate medium wattage to minimize the switching between what. -->
<!-- - `01:19:14`: and yeah one can actually do like go general and proof or and. -->
<!-- - `01:19:21`: explanation of why why why this is true so when you look here this at the at the first case and which we are already saw in the example you operate at some voltage x two this is the supply voltage does it's time you operate for some time at a given by the checks and then you switch to. -->
<!-- - `01:19:41`: or another wattage. -->
<!-- - `01:19:43` why and this results in a certain power and of course the area below here is then the energy. -->
<!-- - `01:19:50` continued. -->
<!-- - `01:19:52` so then the the energy is the overall energy that you need this then this. -->
<!-- - `01:19:58` it is the fraction of time. -->
# ==============1:20:00==============
<!-- - `01:20:01`: the fraction of time that you execute at this voltage at this power plus the fraction of time that you executed at. -->
<!-- - `01:20:11`: the the other voltage of a power so that's it exactly this exp expression here so this gives you the overall energy consumption when you do this such an execution profile. -->
<!-- - `01:20:24`: the other case we already know that this is optimal but we would like to convince ourselves that this is this is really optimal and under which conditions this is this is optima and you are we choose not to switch but choose an intermediate volume and what is this intermediate voltage year so what does this intermediate voltage what. -->
<!-- - `01:20:43`: what shall be pickier. -->
<!-- - `01:20:45`: and the the basic idea is i mean we would like to compare energy consumption as we would like to compare the end of this case and this this case here in this only makes sense when we compare the execution of the same task. -->
<!-- - `01:21:01`: so is the number of cycles. -->
<!-- - `01:21:04`: executed with this strategy must be the same as the number of seconds executed with def that with this strategy that's what i meant meant at the beginning energy values are only meaningful when we save for what we actually using them and here we would like to use we would like like to compare energy values for the same number. -->
<!-- - `01:21:24`: of execution seconds for the same algorithm to execute. -->
<!-- - `01:21:28`: so this essentially means that the that the area here below so the number of cycles is related to the this actually ensures that that the number of cycles is as to the number of cycles needs to be the same and therefore odds of the area here below needs to be the same. -->
<!-- - `01:21:48`: so this is a shown here so okay so this year the left side here is it's the intermediate voltage so it's this this area below this curfew so this intermediate voltage times the length of his intima. -->
<!-- - `01:22:05`: and this needs to be equal to the to the cycles that we execute at the other two voltage in overall so it's the number of secrets executed here and the numbers executed here. -->
<!-- - `01:22:17`: so we have this sort of equation and then can by dividing by t we get to z so as is z is our intermediate voltage. -->
<!-- - `01:22:29`: which allows us to finish the same so remember voltages related to frequency. -->
<!-- - `01:22:36`: frequency of course means how many cycles you can execute for per time unit weight and therefore by doing this calculation we ensure that by this time t we have executed actually so we were actually able to. -->
<!-- - `01:22:51`: operate the processor at such a voltage and therefore at such a speed that we they'd be finished the same number of seconds and this time chin and then this comparison is actually fair we are comparing oranges and oranges not apples and oranges. -->
<!-- - `01:23:09`: okay so so we have this formula here where's my point so here so here we have this this formula for case a and we have this formula for case b with the given intermediate voltage. -->
<!-- - `01:23:23`: now if you're if you look at. -->
<!-- - `01:23:25`: at this plaza so this is the the the dynamic of power and so does the average power consumption depending on the supply voltage and now if this power function as usual used this power function is a convex function saw the power increases crit radically with. -->
<!-- - `01:23:46`: with the supply voltage as we have seen before so it's it's a convex function and because it is economix function using this intermediate voltage which leads to this point here is always better than operating. -->
<!-- - `01:24:01`: at this profile where you switch to a different one. -->
<!-- - `01:24:05`: voltage in between. -->
<!-- - `01:24:08`: if the power functional appear concave like this then it will be the other way around. -->
<!-- - `01:24:16`: so as long as the the dynamic power is a is a convex function it is always better to choose an intermediate value that ensures that we just operate the processor at the lowest possible speed to finish a given task within the settler. -->
<!-- - `01:24:36`: okay so this leads to to the problem of the gap scheduling or actually task so we we'd be talked already about scheduling and the only constrains or had the primary constraints looked at is okay we have to respect the deadlines. -->
<!-- - `01:24:52`: and but now i hear oh we want to make things a little bit more interesting and we not only want to meet all the deadlines we would also like to minimize the energy consumption the energy needed tour to finish this task. -->
# ==============1:25:00==============
<!-- - `01:25:09`: so yeah this is this this question here how do we schedule task should all tasks can be finished no later than the deadlines and the overall energy consumption as many. -->
<!-- - `01:25:21`: and again each task now we use vs on it the task arrive at a certain time that the arrival time each task has a certain absolute deadline. -->
<!-- - `01:25:32`: real absolute time when we have to finish the task and it of course it has a certain verse case execute execution time computation time see i. -->
<!-- - `01:25:43`: and this gif that is so when we define a task the cia is the time needed when the processor operates at normalized frequency one saw at the normal speed if it were a beacon of course tune the the process frequency by by changing the supplier. -->
<!-- - `01:26:03`: footage we ought to change to change the frequencies or we can we can speed up the process or we can run it for example at two at normalize a process of frequency to which means that it runs double double the speed or we can run it at zero point five which means that it is running at half the frequency and it takes double the time. -->
<!-- - `01:26:23`: so the computation time here is related to when running the processes at a nominal speed one. -->
<!-- - `01:26:30`: okay and we will now look at a at a very elegant other room tour schedule and a given tacit and we will do this living with an example and i'm running running out of time here. -->
<!-- - `01:26:44`: but let me let me give give the general idea and then we will we can continue around next time. -->
<!-- - `01:26:52`: might be good to repeat this again so i hope you can still stick with me for five minutes and we will go at least food for this example so here we have an art asset so we have seven seven tasks and what do these numbers mean the first number is the arrival time second number is the absolute. -->
<!-- - `01:27:12`: deadline and this is the computation time at normalized processor speed one and this one here is what this shows here as if this is not to schedule and actually shows what is the arrival time and where are the absolute deadlines of of the tasks so for example task task one. -->
<!-- - `01:27:33`: arrives at time three yeah right. -->
<!-- - `01:27:36`: and it needs to finish at time six because six is it steadily so he'll by looking at this at this picture you can see you when toss the become ready for execution and when they must finish execution. -->
<!-- - `01:27:52`: okay and the the. -->
<!-- - `01:27:55`: the either of them is is quite simple. -->
<!-- - `01:27:58`: you we now need to look at interludes intervals and we need to need to look for into words were so interesting intros are into words were toss arrive and finish so one interesting info would be for example the interval from zero to eight because in this interval for example task free. -->
<!-- - `01:28:18`: arrives and also needs to needs to finish an interesting interview would also be interval from two to six because here costs one and two arrive and need to finish in this entire and there are different combinations of arrive at times deadlines or there are certain interesting intervals you're in for each of these intervals one. -->
<!-- - `01:28:39`: he needs to compute or what is called an intensity the intensity of of the task and the intensity is defined as the sum of the execution times these numbers here divided by the length of of of the end. -->
<!-- - `01:28:58`: and the basic idea is to to look at all his intimates compute for each interval these intensities we will do this step by step on the following slides. -->
<!-- - `01:29:07`: and then your look okay what is the intimate with the maximum with the highest in intensity and then you consider this interval you then you know that you need to run dear the processor it's the at a frequency that is equal to this highest intensity because are. -->
<!-- - `01:29:28`: no other way you can finish these tasks on time within this this interval then you remove this this interval and continual with the rest suck it's a it looks and sounds a little bit complex but let's let's look at so this is actually the computation of all the interesting intervals in it. -->
<!-- - `01:29:48`: in this example so this is the first fester. -->
<!-- - `01:29:53`: exceeded the income of the highest by using the earliest atlanta running it as okay so now we need to compute these intensities here and it's really getting late. -->
# ==============1:30:00==============
<!-- - `01:30:03`: so let's say for example in the interval from zero to six for example we have two tasks that have their arrival time and their deadline in this interval so it is task one and two thus three auto arrives but it doesn't have it's deadlines all. -->
<!-- - `01:30:22`: so we don't have to consider it in this interval in in this computation that is defined here so it is defined so this is these are this is the set of tasks that have the arrival time end the deadline within the boundaries of of the intima so if we look at this interval from zero two to six we have these two tas. -->
<!-- - `01:30:43`: the length of the interval is six so this is why we divide here by six and we have to take the sum of the execution time so test one has an execution time of five and has two an execution time of three so by this formula here so it's the sum of the execution time. -->
<!-- - `01:31:03`: by the length of the interval we have to do five plus three divided by the length of the interval is six so the in so the intensity of this interval from zero to six is eight over six. -->
<!-- - `01:31:18`: let's do another example from two to two six for example. -->
<!-- - `01:31:24`: again here again we have tasks one and two but now the interval is shorter. -->
<!-- - `01:31:32`: so this computation is showing here so it's become computation times of the intimated in individual tasks divided by the length of the interval so the length of the interval is six minus two because interval starts at two so so the length of the interval is actually as late as four so it's eight divided by four. -->
<!-- - `01:31:51`: a divided by four is too low we have an intensity of two. -->
<!-- - `01:31:57`: and yeah if you go through all these intervals you would actually see that this interval between two and six is the one with the highest intensity so it's it's the end however the highest neat tour. -->
<!-- - `01:32:14`: so with the highest demand. -->
<!-- - `01:32:17`: and. -->
<!-- - `01:32:18`: when thinking about this then this number here the intensity actually means that that the processor needs to execute at double the speed at at at normalized frequency two with double the speed in order to finish tasks one and two. -->
<!-- - `01:32:35`: in this time and over. -->
<!-- - `01:32:37`: i mean this the initial task only arrived your rights or task warframe only arrives here and needs to finish both of them here and it needs to needs to needs to sort of do or eight units of work within four time units and this is only possible by speeding up by two. -->
<!-- - `01:32:56`: saw your saw now now your need to execute these two task in saudi there is no other way than executing these two tasks in this interview with the highest. -->
<!-- - `01:33:07`: do with exactly this intensity with at a frequency that is equal to this intensity. -->
<!-- - `01:33:16`: so this is then our schedule here saw this as the interest the interval and we saw a kale definitely need to execute two and one at at intensity two this will be remembered and then we can remove this into her. -->
<!-- - `01:33:33`: nice to toss this into the from from our our problem set so we'll be removed. -->
<!-- - `01:33:40`: i removed this insular with these two tasks from our problem said. -->
<!-- - `01:33:45`: and we are then left with. -->
<!-- - `01:33:48`: task three four five six and seven. -->
<!-- - `01:33:51`: and we can do this by air. -->
<!-- - `01:33:54`: changing the arrival times and the deadlines such that and none of them can actually arrive or finish within this interval. -->
<!-- - `01:34:03`: and i guess it is now time to talk to stop here and we will continue our tenure in the new year so you will not be able to work on the exercise sheet completely you can you can start to work on this the slides will also be your be beyond lions or you can if you would like to to work on the first two times. -->
<!-- - `01:34:23`: boss or you can follow the slights that are on ilias and try to make sense of them i hope they also self explanatory and you can work on the tutus and yet but we will continue here next week so yeah the only thing i need to do now is to wish you a pleasant christmas time son. -->
<!-- - `01:34:43`: peaceful time of your friends and families and your hope to see you all back at full health next year bye bye. -->

# Timestamps
- `00:04:52`
- `00:06:15` repetition finished
- `00:07:28` one processor
- `00:10:26` tight coupling
- `00:13:09`
- `00:14:04` when to use synchronous communication
- `00:14:33` when to use asynchronous communication
- `00:15:09` top and end of queue
- `00:15:19` capacity
- `00:15:31` area in shared memory
- `00:15:45` two operations
- `00:16:41` go into blocked state
- `00:17:42` main idea always one message in the queue
- `00:18:12` not removed and overwrite previous message
- `00:20:51`
- `00:22:08` further reading
- `00:22:25`
- `00:23:17` first in first out semantics
- `00:23:34` not CAB
- `00:26:33` receiving task unblocked
- `00:27:09`
- `00:33:16` reason for frequency no longer increasing
- `00:34:32` transistor and parallelism (cores)
- `00:34:54` advantages of parallelism
- `00:36:51` advantage and disadvantages flexability everyghing software
- `00:37:16` advantages and disdvantages everything in hardware
- `00:38:21` DSP's
- `00:39:53` metric for energiy efficiency
- `00:41:53` power, measure at specific point in time, instantaneous, power draw
- `00:43:21` enerfy, consume, for what
- `00:45:48` faster doesn't mean lower energy
- `00:48:40` where loose power
- `00:49:12` 2 sources of dynamic losses
- `00:50:26` other dynamic loss
- `00:51:13` static loss
- `00:52:37` gatelenght reducing leads to more junction leakage
- `00:53:56` low power modes
- `00:54:47` simple mode, ignore leakage, only dynamic power consumption
- `00:55:21` powero proportional to
- `00:56:09` alpha
- `00:56:57` only need to remember
<!-- - `00:57:33` reduce voltage -->
<!-- - `00:58:50` delay increases -->
<!-- - `00:59:16` impact on max frequency -->
- `01:01:06` rearange
- `01:01:39` what one can play with, with supply voltage main tunning nop
- `01:02:18` 2 static forms to reduce power and energy by exploiting parallelism and pipelining
- `01:03:49` right side
- `01:05:15` double amount of time, both one fourth of the energy, overall execution rate same
- `01:06:53` summary: same performance (rate to process pictures) but one forth of energy
- `01:08:18` storage element
- `01:08:49` fourth of energy and half cycles, one eighth of energy for each picture
- `01:09:29` 2 stages, overall one fourth with same execution rate
- `01:11:42` adapt by changing hardware architecture, next adapt at runtime
- `01:12:46` increase supply voltage then energy per cycle increases quadratically, operating frequency linearly
- `01:14:37` as supply voltage goes down also frequency goes down
- `01:14:46` energy per cycle goes down quadratically
- `01:15:02` as frequency reduces also cycle time decreases
- `01:15:44` summary of contraints
- `01:16:20` calculate energy
- `01:16:35` correction not time that one needs but because of nJ
- `01:17:45` calculation
- `01:20:37` what intermediate value to pick
- `01:20:53` same area
- `01:22:32` voltage related to frequency
- `01:23:35` power increases quadratically with supply voltage
- `01:25:35` worst case execution time
- `01:27:05` what numbers mean
- `01:28:34` intensity
- `01:29:08` interval with maximum intensity
- `01:30:19` why not task 3
- `01:32:00`
- `01:31:56` interval with highest intensity
- `01:32:17` what intensity number means
- `01:33:51` changing arrival and deadlines
