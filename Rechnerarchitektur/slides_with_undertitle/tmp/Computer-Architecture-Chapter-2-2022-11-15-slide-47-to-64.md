<!-- /home/areo/Videos/Rechnerarchitektur/Computer-Architecture-Chapter-2-2022-11-15-slide-47-to-64.mp4 -->
<!-- /home/areo/Videos/Rechnerarchitektur/_Computer-Architecture-Chapter-2-2022-11-15-slide-47-to-64_imgs -->
<!-- /home/areo/.config/mpv/mpv.conf -->
[toc]
# ==============0:00:00==============
<!-- - `0:00:00`: the okay so. -->
<!-- - `0:00:11`: the data now is indeed in the course and in what one of it will be the first to be some sort of like the strings and that is of you one one example for strings and but the main part would be. -->
<!-- - `0:00:31`: actually computing with numbers in the world will take some time on this one and then. -->
<!-- - `0:00:44`: and the first thing i want to show you says oh we had this already but letters to being completely precise about this so so we're talking about and in essence in this bus about two architectures one is the thirty two bit version of his mouth and the other one is. -->
<!-- - `0:00:59`: sixty four edwards and boon. -->
<!-- - `0:01:04`: i. -->
- `0:01:05`: forward their **three basic data types** which showed.
- `0:01:12`: we need to distinguish end this **last one doesn't make sense for the thirty two bit version** too that's why i made this comment that we're having two architectures but let's let's have a look at this one so the first one look is load via trade the second one is served lord ha for it so this is m.
- `0:01:32`: the cold in nc assurance so we hit his last time right when we hit fight **load byte** this is the bee we have ha ha **load halfword** in **c called short** and a w for it **where risk five word is meant**.
- `0:01:51`: **to be thirty two bits, so four bytes** and why **why does(n't)? it make sense on the thirty two bit version of the architecture...** well because all the registers have a mix of the thirty two as thirty two bytes in seoul said lord would actually just load exactly those are thirty two bits and bytes okay.
- `0:02:12`: great end **if you see in the sixty four bit version just ld then this just means loading like eight bytes like sixty four bit**.
<!-- - `0:02:23`: i hope this is clear as of this way you can read from memory. -->
- `0:02:28`: arbitrator and sequence of bytes like **single byte two bytes at once four bytes at once on a sixty four bit machine actually eight bytes**.
- `0:02:38`: **at once** then i already mentioned this last time soap **risc five does not require aligned access...** so of course like **bytes are going sequentially through memory** memory and **but half words for instance like already they like actually two**.
- `0:02:58`: **bytes right sixteen bits and they could of course start at a address which is not divisible by two, they could start for instance at one the halfword would then range from byte one to byte two**.
- `0:03:16`: and is it different in other architectures so that something you need to to worry about if you're the move from one machine to another word so this is **called aligned access so risc does not require aligned access**, that really means here this address here can be arbiter.
- `0:03:36`: re in **it's a byte address** and then **from that byte address you're using reading that many bytes as it's kind of specified here** and the **same is true here for storing things**.
- `0:03:48`: okay see it just like writing like to buy it somewhere but this is age and then there's another thing which is important is that **when you read from an address into register the number might be smaller than the number of your register...**.
<!-- - `0:04:08`: of your righteous terrain so if fences he read the single bite here. -->
<!-- - `0:04:14`: you read it in the register and mrs either for bite on the thirty two bit machine and so are the thirty two in an rv sixty four it's like a light so you have one bite and and actually need to write into the registers and then as you already prepare remember he discusses the couple of times but just to repeat it here. -->
- `0:04:35`: you **need to extent this byte to eight bytes or four bytes...** and how do you do that.
<!-- - `0:04:41`: and this is done by. -->
- `0:04:44`: and in two versions like **zero extension or sign extension** insight extent is kind of the default so this means you **assume that what you're reading there is a two complement signed integer** and you extending just the to **look at the most significant bit**.
# ==============0:05:00==============
- `0:05:05`: **of the byte for instance...** and then you **copy it the remaining number of times** like for the eighth time sexually for the sixth is forty.
- `0:05:16`: no sorry that sixty four minus eight is fifty six times for a bite ends and so on for the other three and **zero extend simply means the upper bits which are not sort of loaded are just set to zero** and in this way you kind of if you read the neck.
<!-- - `0:05:36`: native bite. -->
<!-- - `0:05:38`: are you extended to a negative number thirty two bit or sixty four bit in the same way and for the unsigned or you assume that what you will have their memories something unsigned integers light reading it in in assign were erased or think about you would for instance read some some low level fights where. -->
<!-- - `0:05:58`: really only care about this eight bits then you want to bomb the kind of use these unsigned things here. -->
- `0:06:06`: **when you store it's not necessary you just always take out sort of the part of the register so there's no need for**.
- `0:06:17`: **destinction signed and unsigned** pants items i hope this is clear written as question for the applier.
<!-- - `0:06:26`: for. -->
<!-- - `0:06:29`: the. -->
- `0:06:31`: no this is this is a good question the question was whether like or **what happens if you load it sign extended and then store it...** and then **if you take the same number of bytes it doesn't matter** which whether you use the unsigned of the signed version if you it off.
- `0:06:51`: theresa you think about it because **sign extension just keeps this party as is but just the other ones which were kind of not used yet are not written yet those are extended by either zero or one** in the first leg if you read sir fences two bytes you sign extending the new store those buy to get back into it said.
<!-- - `0:07:11`: effect. -->
<!-- - `0:07:16`: okay end them here i'm going to do a demo which actually has a couple of interesting parts and so i copied onto the source but next lotto you can try this yourself so you have a laptop contrite now you want. -->
<!-- - `0:07:38`: sorry. -->
<!-- - `0:07:41`: and then there's like this streamed copied demo. -->
<!-- - `0:07:47`: strewn coffee and then maybe i should first show you the the c function for that in case you're not protecting that often in cs is slightly different than the one we use. -->
<!-- - `0:08:00`: so the official version has them. -->
<!-- - `0:08:03`: two pointers to all the bytes. -->
- `0:08:08`: and it's interesting to note that **in c char is not defined the signedness of char is not really defined so it can be actually**.
- `0:08:19`: **signed or unsigned...** this is sometimes.
<!-- - `0:08:23`: so you want to be precise you would need to put there between this constant storage be signed or unsigned. -->
<!-- - `0:08:31`: and and this is for rarer platforms in turn. -->
- `0:08:37`: i like uncertainty in his relations actually a source of box so yes i needed him just to be a worry whenever you like and work with strings like here usually don't make any mistake but just don't not caring but **if you work with individual characters maybe actually add with them** brighter.
<!-- - `0:08:57`: add two sq numbers or whatever then you need to do. -->
<!-- - `0:09:03`: abby little bit more careful analysis i just wanted to show you this is sort of the standard. -->
<!-- - `0:09:09`: a string. -->
<!-- - `0:09:11`: the copy for functions that use the destination set has the same direction as our risk five a sampler remember the in the december the destination rich history as the first argument and then to the source here is that one. -->
- `0:09:28`: oh and by the way so this sir just for convenience he **returns this destination but this is just for convenience** rates if you want to see the fences copy something and then return the result of copying it your skin call this a function and return it.
<!-- - `0:09:43`: and this is usually built into the compiler if that's why as you can see in the demo i cannot call it like this if i run it through the compiler so. -->
<!-- - `0:09:57`: if i look here i call this my string copy if i do what we can do this then you see the issue if if i if i save this one then the compiler will give some error message saying while the string copy something i'm i'm i know anyhow so and i'm doing special code for. -->
# ==============0:10:00==============
<!-- - `0:10:17`: and that's why i call it my stream copyright. -->
<!-- - `0:10:22`: who lights string coffee but white that you understand the proper right to the compiler knows this one and actually would do some optimization when it sees it in the program and therefore. -->
<!-- - `0:10:33`: we call it different the. -->
<!-- - `0:10:37`: okay then and bright return type i didn't i left a void return type this is as i said this is just for convenience if the efficient version is that char stir then another thing which you might not know if you're not bad fluent in c and exit is him almost. -->
<!-- - `0:10:57`: it is identical to but writing that star x year. -->
<!-- - `0:11:03`: you can. -->
- `0:11:05`: so in a certain sense one of the big that kind of inventions of of c versus the there is that **arrays and pointers are the same** brain.
- `0:11:17`: end and they actually really the same as we can actually them and this is really identical then you there's no concerts there the way and so so there will also be fine as a **const** is something which is a bit tricky so this is actually **only a hint from the**.
- `0:11:37`: **from the implementation perspective, it's more like a documentation because you can always cast away this const** so it's not really in **the compiler is not really enforcing it** like and **it's not something kind of which tells you cannot actually change the contents of this y**.
- `0:11:57`: but **this is of course what was meat** issue and this is why there's a.
- `0:12:03`: the concept here **it says the source is not touched but the destination is touched** but the desinationbb.
<!-- - `0:12:12`: and okay so this is the difference. -->
<!-- - `0:12:16`: and then he comes. -->
<!-- - `0:12:20`: the court which is very similar to the one in his life celcius to show you are just for checking. -->
<!-- - `0:12:28`: reddit is very similar to this one is like one one optimization i didn't have but twigs one is that instead of i have class one i just like plus plus but that should be known to any everybody that gives another thing which is a little bit tricky for those not working with the muslim forever. -->
<!-- - `0:12:48`: is a job java in. -->
- `0:12:52`: in up **in c actually integers are used for booleans** rates then and therefore you cannot force them to the following so you can solve the ultra what's happening years as retropie tricky so i'm going to assign an.
<!-- - `0:13:11`: at at at at position x. -->
- `0:13:15`: a certain area exit position i assign the value of y at position i ok so this **assignment returns actually as result so this also has a return value an l value left** the court then **which is this left handside** the site egypt.
- `0:13:36`: **the value of this expressions to which it is assigned** pray to he right here expires equal to white light you get that.
- `0:13:45`: **you're assigning it and at the same time you're returning the value you assigned**.
- `0:13:52`: and then by then **it's even more trick because what's the type of this assignment well it's char signed or unsigned we don't have that** yet a box of them.
- `0:14:05`: **this will then be promoted to int because int is what you would need for his condition** but this is completely fine so that **there's just a sign extension happening here like from this byte to**.
- `0:14:19`: **thirty two bit**.
<!-- - `0:14:22`: okay and then yeah there's a plus plus spreads i think you get it right so it's not too complicated but just has a little bit of this the c. -->
<!-- - `0:14:33`: the language semantics built in. -->
<!-- - `0:14:38`: okay now we're going to compile it end and you see i'm combining a couple of ones and also all are always with the sixty four bit worship we can do the same with the with the bum. -->
<!-- - `0:14:51`: with the other worsens and i want to go you with different. -->
- `0:14:56`: and optimization levers like zero one three are actually from australia that that **one and three are actually the same so like one optimization level** are kind of already gets everything out of this a thing.
# ==============0:15:00==============
<!-- - `0:15:10`: and then i'm the first we're going to look at this version which doesn't have any optimization with a zero read string copy zero and there you're going also to see again and the thing with his best last time the the contract of the application binary interface right like pushing constants frame pointer as the point person. -->
<!-- - `0:15:30`: and then the later to to look at and kind of hear the difference between trying to copy and string copy enter and sought alright so as to the the von the non optimized version first. -->
<!-- - `0:15:47`: cake and. -->
<!-- - `0:15:50`: it's actually not too big i think case should make it limpid smaller than you see it's the whole whole thing he's on the screen. -->
<!-- - `0:16:01`: right so stick pinter and beaufort at this stack point of view i think it was x too but it's like written here it is the sp the. -->
<!-- - `0:16:13`: and yeah i can never remember that one the the mapping your analysis this does take binders i think x two and four x three so. -->
<!-- - `0:16:25`: sorry i think we should should have a look at it of course like also in in exercising the class would never ask for this mapping but like for this one at the mo here where. -->
<!-- - `0:16:39`: literature or we need this sir. -->
<!-- - `0:16:41`: mapping where is it here. -->
<!-- - `0:16:45`: fred this is the best one which is also on the. -->
<!-- - `0:16:51`: what's at stake pointer was x two now. -->
- `0:16:55`: ok return address is a form of art that takes one and there will also going to use the **frame pointer...** here you see that in a second so this is x eighth grade it's like a **non temporary register** and are in it **interesting enough in ths assembler it's always called**.
- `0:17:15`: **s zero** in the sp even though there will be kind of more natural to also call it is sp right because sps is called f sp but if sps called a zero.
<!-- - `0:17:30`: okay so you see here is a zero is the friend crater. -->
<!-- - `0:17:36`: i remember when the front bumper was. -->
- `0:17:40`: so we are going to **decrease the stack, we're making room for six double words** because the sixty four bit machine right for six six values six six times eight is forty.
<!-- - `0:17:54`: and and the first thor and actually heal as his topmost so the one by the stackpointer points here and then just below we store the old stack pointer array. -->
<!-- - `0:18:09`: sorry not not for what i'm saying what does this or this thing does that actually. -->
- `0:18:15`: that stores the the steak pointer as it takes as **...frame pointer...** to the stack pointer in il in forty.
<!-- - `0:18:26`: okay and then it adds to the. -->
- `0:18:30`: at stake a pointer which was already decreased by four the spec is forty eight reds had like **s zero is the value of the stack pointer before that**.
- `0:18:41`: and so **it's kind of the old stack pointer**.
<!-- - `0:18:46`: i. -->
- `0:18:50`: and it must have been **why do we need the the frame pointer....** is zero well we want to have a fixed set of the address from which we can access the local variables in in this example we're going to have an.
<!-- - `0:19:06`: and the. -->
<!-- - `0:19:10`: the two pointers and the the increment term indeed. -->
<!-- - `0:19:16`: as local trail spread so we need like the pointless to desert. -->
<!-- - `0:19:22`: the extent of this y position event also this increment. -->
- `0:19:29`: and here you see and **this increment here is stored on the stack at position twenty four which is the third from the top**.
- `0:19:42`: and that this **a zero here this is the argument x and a one is the argument y they are stored here at position like at the highest two slots in the frame**.
- `0:19:59`: okay right so we have like three megabits on the stick one is x one is y and one is high so they're like **not mapped to register** their paycheck and have put them to the safe.
# ==============0:20:00==============
<!-- - `0:20:15`: i'm okay and then we're jumping here unconditionally to this label and then you have what you see we're kind of redundantly getting back these two and like the first pointer a a bitches them here why okay because we are reading from. -->
<!-- - `0:20:35`: and we're heading to eat this thing which was stored at twenty four which is zero mrs argue i hear. -->
- `0:20:42`: and and and that this edition you put back into a for which we are reducing here civil rights away with that so that means **a four points now to the start of the array**.
<!-- - `0:20:56`: and at -->
- `0:21:00`: **the start of the**.
- `0:21:03`: **ith element in the array**.
<!-- - `0:21:08`: okay end them. -->
<!-- - `0:21:11`: then they can lord here and there this sir. -->
<!-- - `0:21:17`: then we can load here this value into a three **we are using this argument register a three as a temporary**. -->
<!-- - `0:21:24`: okay. -->
- `0:21:26`: sorry **a four is reused as temporary to keep the byte read from y** right of **this y i here is now here in a four** and **now repeating the same for the other other address for the address of the ith element in x...** so really reading like from from this position here from.
<!-- - `0:21:46`: from from x there exists lord we add to it that i this is these two lines and end them then and then we are sorry and then reusing a strange things will be loading from register a for them then the the. -->
<!-- - `0:22:06`: so from a four which is the address of the x array the ice was in x rays will be using this to a four and then storing it in a five. -->
- **store a4 (y) into a5 (x)**
<!-- - `0:22:19`: okay so this is kind of here this assignment. -->
- `0:22:26`: and and **then we're reading back and that's kind of a bit redundant this byte unsigned** rates and the compiler does it and signed here end.
- `0:22:41`: if it's zero and then that **if it's not zero then we're going up here to a three otherwise we fall through and return**.
- `0:22:52`: okay so i think you get the idea **at the end...** of the earth this is what i wanted to show in addition **we're going to load the old frame pointer from the stack at position four which we saved here**.
<!-- - `0:23:06`: he saved it. -->
- `0:23:09`: and **we're fixing the stack pointer to the old value** which was forty eight bytes so six double words up.
<!-- - `0:23:20`: up. -->
<!-- - `0:23:24`: okay i think this explains. -->
<!-- - `0:23:27`: once again deserve. -->
<!-- - `0:23:31`: this this simple framework sophie now and look here at vietnam. -->
<!-- - `0:23:40`: optimized version. -->
<!-- - `0:23:42`: but it gets way way way smarter and then. -->
- `0:23:49`: there's like something the **loop is kind enrolled once for the first position...** so this is them and optimization if you can you can think of of this here as.
- `0:24:04`: i am as at least them the kind of reading and writing ones because **this terminating zero byte which is the end of the string will be written no matter what** so you're going to write that anyhow and as kind of hear them outside of the loop and then only later you.
- `0:24:23`: you have fear of the lord in from form and i have three and then offers **if the first byte is actually zero will immediately terminate going down here to return**.
<!-- - `0:24:40`: okay enter again the compiler does sync in bytes and and that's also when you do this addition here and there so here you're incrementally he won and here you're incremental a zero and they're both pointing to the. -->
<!-- - `0:24:58`: and to the m x end in y at position i ok in tab then we're reloading here from from these two into them a five another temporary register and storing it back into the address of a zero and then add a one again one or two each of the two addresses. -->
# ==============0:25:00==============
- `0:25:19`: okay so **what the compiler figured out is you not need to kind increment the i and go through this thing, what you could do instead if you take two pointers so real pointers which go through the array in parallel, so this will be addresses of these bytes**.
- `0:25:36`: and and **then you only need to increment the pointers instead of incremanting the i**.
- `0:25:43`: and **in the end you save like one addition** why write **what would be the alternative...** of value you implement this i then added to the base offers within the.
<!-- - `0:25:53`: but they need to do it for both addresses for x and y. -->
<!-- - `0:25:57`: but you need to implement the the the i. -->
- `0:26:00`: and then added to the basis for his fifty **three additions** while **here if you look closely in the loop there's only two** and there's like one one assembly instruction less.
<!-- - `0:26:16`: i saw you could do this also and i'll i'll show you this here from with the and there's a spring starting point of the copier cord it. -->
- `0:26:29`: **this does this explicitly**.
<!-- - `0:26:32`: because this is like if you go to a simple like if you go to read the old republic running in gucci they will actually show you here that this saw a slightly different version near the the loop what is actually empty because the assignment is made here in the tests. -->
<!-- - `0:26:50`: and end the you're assigning here you to the q and p point at the beginning of x and y and then the walk imperil right in as as as soon as the as the the written bite here is zero or you fall out of the loop and then not otherwise implemented. -->
<!-- - `0:27:10`: so this one year is actually what what you have here but on the on the left the compiler was able to take this kind of caught in compiling sort of in in that one which is more efficient brain. -->
<!-- - `0:27:28`: and and of course like in all districts it would be better to write the program in the bottom right so you don't rely on the compiler doing this and sometimes you don't look carefully read the compiler might miss some information may not do it and then you're wasting kind of them on. -->
<!-- - `0:27:47`: optimizations. -->
<!-- - `0:27:51`: okay. -->
<!-- - `0:27:54`: just checking whether this is also true for the time. -->
<!-- - `0:28:01`: and if an order to the point of copy one thing right it actually removes the the another. -->
<!-- - `0:28:10`: actually ship to this now with the. -->
<!-- - `0:28:15`: the string and point of copy and to a tiff. -->
<!-- - `0:28:20`: and you see the difference here between the two and the on the on the right is the point of copy and enter that there's like a. -->
- `0:28:30`: he had three and these lines here are less red this is the one with the dishes and you see like there's less of them have one well there's like one line here and three lions here said like **this one is a bit shorter** and but in essence it **just rearranged the loop** so.
- `0:28:50`: oh so **for some reason the compiler was not able to completely optimize it and as good as it possibly** array.
<!-- - `0:28:59`: remember this worsened with me that implementing the. -->
<!-- - `0:29:04`: i could tear the version down here so this is the string copy. -->
<!-- - `0:29:10`: and this series the pointer copy. -->
<!-- - `0:29:15`: nasri. -->
<!-- - `0:29:20`: okay and. -->
<!-- - `0:29:25`: occasionally they really do the same about them while there's like one one difference though which is sir. -->
<!-- - `0:29:35`: whether the get re-tested with overflows but they would actually act in the same way and it's also the consequence of this a demon is therefore and you should be careful when you're through this certain set of maybe very in. -->
<!-- - `0:29:53`: at like like low level and may be used thousands of times functions to them and there may be really look at the assailant or rather the assembler is believed to be is as efficient as as it can be in and you see here that this is not optimal while this one is op is way better right. -->
# ==============0:30:00==============
<!-- - `0:30:14`: am. -->
<!-- - `0:30:16`: so the compiler is very good in engaging already something out he on the left but it uses more instructions frame. -->
<!-- - `0:30:24`: and and so so in in a certain sense like the one goal here of this classes and to make you aware of this interface between sort of. -->
<!-- - `0:30:34`: software enter assembler in there and expert execution yes. -->
<!-- - `0:30:40`: the question of course the problem is and i'm trying to solve this on three different machines with different lists the pilots i'm always it could be surprising yes but it's a good question i thought like yes there was different but the now this guy has to. -->
<!-- - `0:31:00`: more right than what that one. -->
<!-- - `0:31:04`: the question is i should have shown you this one. -->
<!-- - `0:31:09`: i. -->
- `0:31:12`: okay so so in a certain sense so what let me repeat the arguments of the argument is and **if you know how a c java python program is compiled you might already addept the way you write it to what you think the processor then would do and you can check this by looking at the assembler if you want**.
<!-- - `0:31:31`: the end. -->
- `0:31:34`: and this may **change your programming style in particular for those programs where you'll have some part that is kind of a  hotspot** lick **where like most of the time is spent** in there you want to look at it right he didn't want to do this every just want to do at this point of your code which is the highest spot right in to figure that out like what takes most time or bitches the most expensive.
- `0:31:54`: part of your program and if this is important to optimize then you you you will wanted to dislike sort of going down in the abstract the gauntlets he later actually and things which are visible in the assembly level right and we haven't talked about like a process i actually committed **there's another level below**.
- `0:32:14`: but will come to come to this layer **where you even would need to understand like how would the processor execute this** okay and then.
<!-- - `0:32:25`: maybe this already then getting two levels up that way of but the redoing your program. -->
<!-- - `0:32:33`: okay this was string copy. -->
<!-- - `0:32:40`: and you're not going to this code now this one minute already in the exercise but our repeated briefly so that you're going to not miss it. -->
<!-- - `0:32:53`: so and. -->
- `0:32:58`: **you have these immediates just twelve bits if you recall and they are two complement** right lick their italy side.
<!-- - `0:33:09`: and then. -->
<!-- - `0:33:15`: and this is sufficient for many many small things right remember like references for this book just so he had to settle at one okay then we can be at immediate or if you walk in an area which is a contains like ins we add for it pertains. -->
<!-- - `0:33:32`: long be at a rate and he still fits this twelve pit so the coffins exists around like two thousand positive and two thousand negative. -->
<!-- - `0:33:42`: and but sometimes you need bigger numbers rate then send spam think about you have some big fat objects and classless object that you need to allocate then you need to compute the number of bytes and give this argument to the function and so how do you didn't notice constant number of bytes into a register. -->
<!-- - `0:34:04`: and here the design decision in in the risk five was there we're actually splitting the simply into instructions. -->
<!-- - `0:34:15`: okay the first instruction am and can set the upper arm pits are off the registry and then. -->
<!-- - `0:34:27`: actually the upper half of the upper half words off the. -->
<!-- - `0:34:36`: lowell worried you said he and his pictures old so we have an italy and like a eight bytes here right like appears that are here. -->
<!-- - `0:34:48`: the fights end are for sixty four bit register and and we're going to set this at disguise here at this twenty. -->
# ==============0:35:00==============
- `0:35:00`: except these twelve here at the beginning through a specific instruction which is called looked load upper immediate and on a thirty two bit machine you see this would would load the upper like **on a thirty two bit machine you see this left part would not be there**.
<!-- - `0:35:19`: and then with this instruction you would just low tier this upper twenty bits of the thirty two bit registry be on a sixty four bit machine is a little bit strange rates have a light loading kind of in the middle twenty bits but then on the other hand you think about it that this thing here is thirty two bits here they can re. -->
<!-- - `0:35:40`: range from zero to like four billion right this is a big number actually. -->
<!-- - `0:35:45`: and then he lower once your you can then work with the immediate rights of the blue like for instance you could just add like thousand twenty thousand two hundred and eighty here. -->
<!-- - `0:35:58`: and. -->
- `0:36:01`: alright then so then **you need to be careful with this sign extension thing** have in his case that sir this this thing here at **this add immediate actually does sign extension** since this one here remember like it's two they're like twelve bits said this one is positive.
<!-- - `0:36:20`: the question for a while. -->
<!-- - `0:36:25`: the mirror. -->
<!-- - `0:36:28`: this exactly something it is also you said like if you want a load like the four bytes rate then you could could then you will need to actually use these two instructions and then of course the assemble equipped with four years of the assembler which would split the lord into two and and so actually this is also part of this then. -->
<!-- - `0:36:48`: i think it's here of this. -->
<!-- - `0:36:53`: nah probably not. -->
<!-- - `0:36:57`: may. -->
<!-- - `0:36:58`: yet here no sauce on them. -->
<!-- - `0:37:03`: yeah he probably said that that's the one you ask right so he could write here or maybe loading something global but it's too big and then i buy this is for loading for for immediate. -->
<!-- - `0:37:18`: am. -->
<!-- - `0:37:21`: yeah i can see it here and also this is for the trumpeters it's the same thing so what you wanted to to look you want a loader a constant which is fine since provide and then you can write it in in the assembler actually is one line but it's actually two light three since just a pseudo instruction that's what i wanted to see. -->
<!-- - `0:37:41`: and. -->
<!-- - `0:37:44`: okay this was a design decision albert is stepping back to make the the the the instruction format extremely irregular so how would your otherwise lord thirty two bit rate if your instructions are also little bit how can you load then it'll be there's no other way but about sort of splitting it somehow right. -->
<!-- - `0:38:03`: and that seems to be a good compromise kind of learned in in forty years of of people work wonders. -->
- `0:38:16`: okay and **if you would need to load a sixty four bit constant what would you do...**.
<!-- - `0:38:25`: yep. -->
<!-- - `0:38:28`: read the for. -->
- `0:38:31`: yes exactly so so you would just **do this twice and in the middle you would shift** great that's that's what you do.
- `0:38:38`: the **need four instructions** then which is also not too bad if you think about it, so you're loading like the sixty four bit which is eight bytes with the then four times four sixteen instructions was not like to put an orchid so one more twenty instructions.
<!-- - `0:38:56`: for the left shift. -->
<!-- - `0:38:59`: okay so this is this is them. -->
<!-- - `0:39:03`: the design decision of and at the same time and. -->
<!-- - `0:39:08`: explains how it's concretely done. -->
<!-- - `0:39:14`: okay now let's look at another instruction with chess. -->
- `0:39:21`: a constance in it and this is this our old trenches reds if you go back to earth quite close to wimbledon not in the bright sunlight here these branches right so this labels how are they are really compiled into machine code put rents of **every line here if it's not a**.
- `0:39:39`: **pseudo instruction**.
- `0:39:41`: **but there's like no pseudo instruction that splits into two so every line here would get into like four bites** good now **how do i get**.
- `0:39:50`: **this label...** compiled the **actually assembled...** to the similar to that.
- `0:39:57`: and well **it knows the address here of this assembler instruction** so we don't see **if you use this object dump command like we already did before then you get the actual address** rate the **byte offset** breadth of this would be zero this would be before this with the eight and so on.
# ==============0:40:00==============
- `0:40:17`: okay and **then this l one is i don't know i didn't count maybe like twenty four or something** right.
- `0:40:23`: hmm so **how do you know get the code for this assembler instruction...** while you could the op code for that is clear right.
<!-- - `0:40:37`: and also to register these are these five pits each writer it was sir here. -->
- `0:40:47`: if the **branch equals zero this is a pseudo instruction...** it would simply be french equal and then there would be **a five and x zero register**.
- `0:40:58`: so this is how we get this then the opcode and his falcon pulled **the function is just sub** about this but in principle your code is okay and then you see the rest so that does these things we know heiress one else tours and you're put at night here are we getting them.
<!-- - `0:41:16`: strange. -->
<!-- - `0:41:19`: images so they completely scrambled and the question is why. -->
<!-- - `0:41:26`: first of all please do the math here and how many bits constant bits are there in this court can you count. -->
<!-- - `0:41:37`: the last of it was afraid like before. -->
<!-- - `0:41:40`: but you see it here it is it says immediately thought this is it number thirty starts at zero i can't actually have certain bits in there so how does it work anybody season. -->
<!-- - `0:41:57`: there's no zero bit. -->
<!-- - `0:42:05`: and to fight through the whole year for some reason read in this hole is actually helped my internet is working and this this hole is actually filled in here by this bit here like right to the left of the accord which one. -->
<!-- - `0:42:30`: okay so the solution is as follows and. -->
- `0:42:34`: remember we just looked at this sub so this means **every four bytes** rate and **all these addresses of this are therefore divisible by four**.
- `0:42:45`: so the actresses and also the relative at researcher to a lead level one rates and his will be in a position eight and you go let's say to twenty you think the difference in **also the difference will be divisible by four**.
- `0:43:01`: okay and **that's the constant you need to put into the opcode**.
- `0:43:06`: **this constantly if its divisible by four will always have it's two least significant bits zero** right that's like what divisible by four means.
<!-- - `0:43:16`: okay **so that means i can actually jump further because i know anyhow that the least two bits are zero**. -->
- `0:43:26`: okay but **why is there then only one bit left of...**.
- `0:43:31`: well **because there's this compressed format** remember that i mentioned this risk five is for embedded applications was compressed and the instruction format where the **instructions are half the size**.
- `0:43:46`: **there are only sixteen bits or two bytes** kit and **because the assembler should not change they decided to keep almost the same decoding in whatever machine code for both versions for the compressed version for the not compressed version**.
- `0:44:03`: the one and **in the compressed version we see the delta between pcs and jump targets is always a divisible by two**.
<!-- - `0:44:11`: so the zero been the least significant bit is zero. -->
- `0:44:17`: so you know that kind of **four branches**.
- `0:44:21`: **in a compressed or not compressed format the immediate (need to get caught)? is always its least significant bit zero** and that's why we kind of exceed i call it does in other contexts **bit stuffing...** and he was not my invention other people had taught me about this at the.
- `0:44:41`: assert yourself **we stuffed a single bit here which we actually would need to pull to the...** generosity from you thus i looked to the **right**.
- `0:44:52`: and **so we need to pull this out and put it like in front so that's why we had this one thing here kind of taking this eleventh bit and putting it kind of here**.
- **funktioniert wahrscheinlich so, dass das Immediate immer so eingefügt wird wie beim S-Format und somit immer eine 0 dort steht wo im B-Format das 11-Bit ist. Auf diese Weise bekommt das 11-Bit immer eine 0 und es ist weiterhin wie normal möglich das zu verarbeiten, da die 0 vorne nichts ändert**
# ==============0:45:00==============
- `0:45:04`: okay so **so why does the machine called is now so scrambled[...]** and well then there are **two arguments...** so you'll want to have **everything which is needed for sign extension and always here at the most significant position** that's what what what is kind of a common design from it and if you build ha.
- `0:45:23`: right **you always know this so this bit is the one which needs sign extension** right to **you can kind of pre compute the sign extension** you **take this bit and copy always like thirty two bit's for instance times** spread.
- `0:45:35`: in this of course **makes it faster to decode this thing**.
<!-- - `0:45:42`: and then. -->
- `0:45:45`: yet **so these guys are usually really 10 to 5 in the other format** if you go back to this format here why don't have it here they should have it one more later.
- `0:45:57`: no africa sink in so **you want to keep as much overlap between different instructions as possible and the other immediate would have their anyhow five to ten so that's why there's five to ten and here's also four to one but the zero is kind of taken out** subsidies you **think in terms of decoding this in hardware...** this is.
- `0:46:17`: is that the this gives it a **nice compact encoding**.
<!-- - `0:46:23`: okay end in addition the gesso once again this is sign extended. -->
- `0:46:29`: and **how far can you jump with this thing**.
- `0:46:35`: **like in absolute addresses not in kind of number of statements**.
- `0:46:45`: well you see **like in essence we have thirteen pins**.
- `0:46:50`: so this would be **around eight thousand**.
- `0:46:54`: **bytes difference** but we have **signed so it's acutllay four thousand** great so he can either chump address **four thousand forward or four thousand backward** and precisely it will be a while four thousand from.
  - 4095 forward and 4096 backward
<!-- - `0:47:09`: the ninety five forward in minus four thousand ninety six speaker train. -->
- `0:47:15`: and the reason why we can do this is because of all the chumps ever up you see **it's either two forward four forward eight forward but never one or three**, **that's why we safe here one bit**.
<!-- - `0:47:31`: okay end and then there is the long term which allows to open a similar to this opera immediate thing we used to load constants are two constants we can also use to to jump at the like further away right. -->
<!-- - `0:47:49`: like twenty pits actually. -->
- `0:47:53`: and as you can see there's also no zero bit here and that's also means that we can actually **jump here up to sort of around one million up and one million down in address space** it's trespass.
<!-- - `0:48:14`: okay **and this would encode the absolute address directly into the**. -->
<!-- - `0:48:22`: **into the assembler** then. -->
- `0:48:25`: the rights are like if you wanted to jump like that in around like **one megabyte around the current address** you can use this one.
- `0:48:34`: and **if it's bigger you need to do a similar trick as we did before like with this thing here and load the real address, like if you need to jump far away like two gigabytes or so** then you need to **load this in a similar way like this one and then use the jump instruction which uses computed address** the computer.
<!-- - `0:48:53`: booted from address ring. -->
<!-- - `0:48:56`: and i was only has a smaller and offset. -->
<!-- - `0:49:02`: i hope this is cleared right there's not much difference in there not much new new principles here. -->
<!-- - `0:49:11`: yes of course the alarm. -->
<!-- - `0:49:16`: another different of course then right what do you mean with. -->
<!-- - `0:49:20`: oh i would need to i dunno the upwards here to to never the opcodes are like that also here and there here in this let's the fences and great. -->
<!-- - `0:49:34`: so this will allow. -->
- `0:49:37`: yet so **this one is the long one** one which has discussed this this one there with me **without the a**.
<!-- - `0:49:47`: and am. -->
<!-- - `0:49:49`: and **the one which has a**. -->
- `0:49:52`: register here this has (in two then)? an offset the twin lead now hip but **these are the compressed ones** so i should have showed you the the other ones very.
# ==============0:50:00==============
<!-- - `0:50:08`: the sheer years to get the other one word is the shortlist it's just like that this thing has everything in it this thing okay. -->
<!-- - `0:50:19`: are so decided the the the one and we looked at with his twenty pitches this one here so it would increment as he would with them remember the the current pc in this destination for gesture and then. -->
<!-- - `0:50:38`: great. -->
<!-- - `0:50:41`: so in looked though i think outlet that i got the wrong one said no this this is this this once a year and the rest are. -->
- `0:50:51`: estimates from veterans to set **the destination register is set to the current pc plus four** and **then you put this...** twenty bit.
- `0:50:57`: nah sorry it's **twenty one bit** actually twenty one bit immediate swiss **twenty payload but you shift it by once but then you it's signed so actually you have twenty bits up and down so one million one megabyte kind of up and down**.
- `0:51:14`: and **this other one here this immediate is only twelve bit payload so again this thing with one more bit because ever the least signifigant is always zero but then it's signed divided again by two** so **there's like four thousand bytes hundred bytes upwards and donwards**.
- `0:51:32`: **but relative to the register rs one** and mv discussed this last time **remember where we use these registers[...] it's for this computed goto's and for this virtual function table in c plus plus code**.
<!-- - `0:51:48`: alright. -->
<!-- - `0:51:54`: so this gives the overview within of the formats and yet. -->
<!-- - `0:52:02`: surgeons need you this thing again because we have it open there's also like here a tape which explains the same and and you have different forms of addressing the immediate interesting where you have like these tall pits and and then you have register. -->
<!-- - `0:52:22`: you're tracing where you have to register as a source and one register his destination. -->
- `0:52:29`: then we have the space and addressing where we where we take the register and then you have an immediate and then they can take the interest from the source register and apis as offset this immediate and then this gives us then the address from very really read something **depending whether it's byte half word double word**.
- `0:52:50`: but **whether we read it signed or unsigned** read.
- rd = destination, rsx = source
- `0:52:54`: then we do the same kind of kissing this **looks almost the same** that **except that we're having here the pc and not the register** and **this is needed for this branches where we compare this set to registers and  we don't need...**.
<!-- - `0:53:14`: the. -->
- `0:53:16`: **here the destination register** so **that's why some part of the immediate here is moved to the right because we want to have the source registers always at the same position in the opcode and it's again important because**.
- `0:53:35`: **you want to read the instruction and immediately start computing with every party it has and if...** the resource if the resource site **source instruction one is always at the same point we can start working with it even though if it's maybe later not needed then you just don't use it but you can kind of get the value of this thing that's the idea**.
<!-- - `0:53:55`: dennis is the same tabor be we we had before. -->
- `0:54:01`: yeah i'm not going to this not into the details **it's a good exercise to to take this one or this one and then just go trouth it and also map it back to instructions which are using these fields**.
<!-- - `0:54:22`: alright. -->
<!-- - `0:54:24`: so they will be good close the the addressing modes other questions here. -->
<!-- - `0:54:31`: yup. -->
<!-- - `0:54:36`: okay. -->
<!-- - `0:54:37`: i'm not now and this part i skipped last year that i thought like that because i'm actually also working on the syllable in the image of my old university i was actually even teaching perl programming so that's why i want to at least it it's not much actually only one i think. -->
<!-- - `0:54:58`: through his lights. -->
<!-- - `0:54:59`: so and. -->
# ==============0:55:00==============
<!-- - `0:55:05`: then you do. -->
- `0:55:09`: parallel programming in particular thinks or think of having **threads which really really work on the same memory space** rain.
<!-- - `0:55:20`: you need to make sure that they're on. -->
<!-- - `0:55:24`: that there are no data races there is something versatile like people perkins thinks in the same time and then things get messed upright data race and if classical data race is. -->
<!-- - `0:55:37`: like taking something from a bank account and not making sure that the whole transaction is completed before you do something right and then money gets lost and things like that so i think he noted arrests end. -->
- `0:55:52`: i'm **very down at the assembler level you also need to have support for avoiding data races** and.
<!-- - `0:56:02`: i. -->
- `0:56:04`: so this is **known under the term synchronization or atomic operations** and they are actually written that the various methods for doing this end of year in particular.
- `0:56:18`: you could look at **x eighty six[...]** it's a connection prefix that they have like assembly instructions which which puts a prefix in front of other simple instructions that they didn't become atomic.
- `0:56:28`: and that of course makes things really complicated penis he can can figure that out so at that **in risk five they used one variant which is called load and store or load and link[...]** and i will add i'm going to show you how this works at a basic ideas you want to have.
- `0:56:49`: and **on a assembler level instructions which are guaranteed from the assembler program perspective to execute somehow atomically**.
- `0:57:04`: so the classic version for instance is **atomic increment** like they have **two threads** right and they they **they want to take something from memory and increment it** and **if you don't lock it like both of them read it and increment it by one** right **then you incremented actually only once** it.
- `0:57:24`: **because one of them vince in writing it back**.
- `0:57:29`: and as though **this is a classical data race** and you **want to avoid this** end and **therefore you put in your processor, this machine for instance has it like an instruction which guarantees which is atomic increment** like and as i said **in x eighty six you just put a prefix there** which are would you make sure that like **when you increment**.
- `0:57:47`: **is that nobody else is actually reading it...** albany right like it will be cannot **stopped from doing it**.
<!-- - `0:57:55`: okay empty ill. -->
<!-- - `0:58:01`: so. -->
<!-- - `0:58:03`: yeah as i said like multiple versions i'm going to show you now like diversity here in in this fives have and i saw this first leg i learned was also only this other like atomic increment in something which is comparing called compare and swap or before and then i saw the servers five thing and i thought like it's it's really complicated. -->
- `0:58:23`: but it's probably the strongest way the atomic instructor says the strongest means **with this atomic instructions you're going to see you can implement all the others** by bit with the others he might not be able to do that one and it is cheaply so can have this that's why i wanted to show it to you because i think it's a it's a nice.
<!-- - `0:58:43`: nice insight of it and it sir. -->
- `0:58:47`: exactly **two instructions and use the always in pairs** that can **think of this as like start and end** and assault you think of this as maybe for the **databases this concept of transaction...** rate so you kind of need to define your friend's actions and you started with el art and you store it with star can use you still have to finish it.
<!-- - `0:59:07`: start conditioning and then only then let's say the money been from his bank account to the other one ring. -->
<!-- - `0:59:17`: and the semantics are as follows so am i. -->
<!-- - `0:59:24`: so so they have this dc and for them model to know why there's a dp i never thought about yourself want me to check what while equality analysis at al l r dottie am and this is a load reserved and and a star conditioner so the idea is that. -->
- `0:59:42`: you **load something from a memory address** so this historic memory traces starting register is one racer with his **parenthesis we always have indirect addressing** subject we use.
- `0:59:55`: he tried to reach from that address and the the **this is probably double word that why like sixty four bit** and end and social read from this address them like into register rt mercury fillings destination register and.
# ==============1:00:00==============
<!-- - `1:00:16`: at a decision like this number of bytes like them in step eight in this case. -->
<!-- - `1:00:24`: okay so that looks like a standard earn lord that's also the first will adhere but the second one is the important one is kind of citizen then some part of the process or some state of the processor which is on the indirectly of them then the observable **while you load this**. -->
- `1:00:43`: you tell the processor and by the way monitor now this address that nobody else does the same okay tries to resurface so reserve this address for me and nobody else is allowed to resurface and **if somebody else reserve it well do it but then tell me**.
<!-- - `1:01:04`: we've made it right it's kind of i tell the processor i have here the city and i want to look at it. -->
<!-- - `1:01:12`: and i want to reserve the terminology. -->
- `1:01:16`: and now he comes to the operation and then this two and **this is sort of the link between these two which works on the same address** right and here you kind of taught the processor to look at this address.
- `1:01:31`: and here and this **instruction here would only succeed if nobody is trying to reserve that one in the meantime**.
- `1:01:44`: so **for instance[...]** both two shirts would load is in increment isn't this number they want increment the first would reserve the address the other one would reserve the address you can if not the first one issues the story of a faster rate of first this one will not succeed because there was in the meantime the.
<!-- - `1:02:03`: somebody else trying to reserve it. -->
<!-- - `1:02:08`: and what does it mean that it's not succeed, well the destination register here will be zero. -->
<!-- - `1:02:15`: the market in this destination register that somebody is actually also tried to reserve the meantime. -->
<!-- - `1:02:27`: okay them and them. -->
<!-- - `1:02:31`: am otherwise this thing here assess and you take the other as a sauce rochester this is the kind of thorough operation you want to take this other source and and write it to this reserved factories and if it succeeds you get a zero am. -->
- `1:02:52`: and you get one if it fears sri he has so i i think i said it wrong for insights like them this is the classical **linux shell system convention that zero is success and something nonzero is failure**.
<!-- - `1:03:09`: okay. -->
<!-- - `1:03:14`: one. -->
<!-- - `1:03:21`: okay so so so supplied by the way do you know why wedding they did this was in the old system stay in unix zero success and non-zero integer for instance is fail why any of this. -->
- `1:03:37`: yes exactly that says instead **the answer was error code so this what the result value would then be an error code and zero means no error**.
<!-- - `1:03:47`: so that's that's the idea that's why i and others like them if you think of it as a brewery it's a bit strange rate then you have something which is zero to be and to me the success but that's like hogging old systems and unix with the philosophies and so once again so if. -->
<!-- - `1:04:06`: you're taught the processor i please have a look at rs one and then daniel try to later store something had this artist run with his conditioner store here and then the succeeds only if if nobody has didn't then he did a repair like touched it with that or reserved it in the meantime and. -->
<!-- - `1:04:26`: i am in then and it's like of course what you need to make sure when you're implemented with a process or the process really makes true that is that then the riverside artist who is also written to this artist one right. -->
- `1:04:39`: so if liking the hotter this also guaranteed that you need to implement this somehow that nobody like venue reserved it did nobody else would actually like right to that that only this one here **if this succeeds this thing is guaranteed to write** too busy actress.
<!-- - `1:04:59`: yup question okay so i saw this already and sansa gonna get in the air ssh rates are so for me that i did those pro parallel program for serb became sort of from a more modern having existed for a long time but like in the past like ten years ago. -->
# ==============1:05:00==============
<!-- - `1:05:17`: lol i would not have used it am and but it's now actually quite natural and there's light i'm going to show you in the next light to examples and i want to punt on him particularly hit on you you will see that. -->
<!-- - `1:05:31`: this is extremely powerful because it allows you to to kind of build all this other concepts of locking of which you are otherwise he was in this also this first and to the atomic swap so this is one of the things you usually implemented so this is kind of sort of the weakest version. -->
- `1:05:50`: and then unnecessary to implement a synchronization **so what is atomic swap[...]** rates are like your to do you have a memory address and then you want to make sure that and not two people at the same time would swap pink and lakewood right to it in and you can achieve.
<!-- - `1:06:10`: that by saying okay if if atomic swap for one poll for one thread succeeds then it's guaranteed that nobody else read sort of the old values either regrets the old value and then the atomic swap did not not not work right port it would redeem then your web. -->
- `1:06:31`: okay so how how does this work so that we have this them and at **twenty and twenty three are the two arguments to this atomic swap** are **in twenty you have the address to where you want to place the value which is stored in register twenty three**.
<!-- - `1:06:49`: mr twenty three okay that's the idea. -->
<!-- - `1:06:53`: and end **at the same time you want to get back then here in twenty three after executing this code the old value at this memory address** record. -->
- `1:07:04`: does he **have a memory address**.
- `1:07:06`: **and in the register a value you want to put this value at this memory address and take the value of the memory address and put in the register**.
- `1:07:18`: **and you want to be sure that nobody else messes up while you're reading or writing** rate.
<!-- - `1:07:25`: okay now you do that well then you're going to read that from his memory pressed into a temporary register like this extent and. -->
<!-- - `1:07:35`: then i'm just writing is twenty three what i want to write anyhow right. -->
<!-- - `1:07:41`: and it's now might fail because somebody has the same right somebody else might have also issued a two-stroke would issue his lr at the same time. -->
<!-- - `1:07:51`: but then one will succeed right because one is fulfill your rent and maybe get to distinct earlier or both of them would not succeed and anyhow so what's going to happen here is now that if you succeed rate bench with storage is he this value in twenty can. -->
<!-- - `1:08:10`: since nobody else was able to reserve this address extend now has the devalue you're interested in rates you to give it back otherwise if it's failures are concerned a non zero not that equal to zero here but then you just do it again. -->
<!-- - `1:08:27`: and have not known about what could have been averted both threads loopier fright but maybe in at one point as he like a bomb threat with two lr and seen succession before the other one does it and then this one little through disputed perception first and then also the other kinkel. -->
- `1:08:47`: okay so the **next one is a classic lock[...]** right so luck is is simply.
- `1:08:59`: an extra **semaphore sometimes called** and it's a global and.
<!-- - `1:09:04`: address so it's like they're from that ip again twenty said in memories the shreds communicate over memory and. -->
- `1:09:14`: you want to **make sure that only one thread is in the critical section**.
- `1:09:19`: **only the thread that has written one to that address is allowed to do something critical the other one has to wait**.
- `1:09:28`: and although of course if withered **without atomic instructions both threads would read it then write one but they could read it the same time and write it the one time they both think they in the clinical section but they're not writing we need to make sure that only one succeeds in writing the one**.
- `1:09:48`: **[...]**okay and so so we're first getting here in register twelve and the immediate one rachel vs the thorpe's no constant one.
<!-- - `1:09:57`: and **we need that because in riscv you cannot write an immediate to memory address because the immediate in the store instruction is the offset** the recording. -->
# ==============1:10:00==============
<!-- - `1:10:10`: and so that's why we need to first load the constant here and then then clearly loading this value of the semaphore of his global memory address. -->
<!-- - `1:10:22`: and alright and now unguarded which was waiting you're busy in a busy loop this is for the busy new am. -->
<!-- - `1:10:31`: until the other thread releases this lock that means like as long as is not zero somebody else has taken the larp right. -->
<!-- - `1:10:39`: and very reserving it again. -->
<!-- - `1:10:42`: okay. -->
- `1:10:45`: but at one point you see it could be that knowledge zero became the other spread or **unlocking actually just means globally without any atomic instruction setting this address here reserved / the element of this address reserved** okay many of you you get to this conditioners.
<!-- - `1:11:05`: in the event you're writing the one here yourself the one to this address. -->
<!-- - `1:11:13`: okay but now it might happen that again the above all threads that are here in this position raise like both of them would now try to do this but only one can actually succeed in reserving and then later conditioners story. -->
<!-- - `1:11:28`: and the other one would fail and then you go again to that again here otherwise if this thing here zero then you fall through it you're done reading the the critical sexual here between these two lines. -->
<!-- - `1:11:46`: okay so. -->
<!-- - `1:11:49`: anyhow so what i showed you here is and i decided to do it this year is is this is sam that at one of the strongest or maybe the strongest to an atomic primitive and is a standard default one for for his clients in its my wife thought a partial showing to you. -->
<!-- - `1:12:08`: and it soon can be then used here as in the sticks examples to implement more complicated ones. -->
<!-- - `1:12:18`: okay. -->
<!-- - `1:12:21`: now for for the rest of the toys are the questions for the synchronization thing. -->
<!-- - `1:12:31`: so i i do have a little bit more of on and on linking and i'll button enter the article up of briefly over death and the and for those of you who who who were already last year. -->
<!-- - `1:12:47`: i figured that or the. -->
<!-- - `1:12:52`: having had like lots of arithmetic already in in the other course in digital design a for market said why i want to expand a little bit here. -->
<!-- - `1:13:05`: okay am. -->
<!-- - `1:13:12`: assistant class you'll remember that and for those who have not seen that have perceived it it might be a little bit tricky but then and what i shall here in this light is related to this. -->
<!-- - `1:13:27`: the thing i always did in his theme was red but there was not really very explicit about his. -->
<!-- - `1:13:34`: and so first of all venue will compile a cr surplus for the program usually you would actually. -->
- `1:13:43`: champ at **the assembler is usually only internally in the compiler** and you will not see it but in our example rightly a fire chief that by.
<!-- - `1:13:58`: by. -->
<!-- - `1:14:00`: by this minus se rain which would explicitly give us this thing. -->
<!-- - `1:14:07`: and also note that the interesting thing is you can also take and still am as input here for the compiler such as in assembler rate. -->
<!-- - `1:14:20`: and like if i generate a probe and a similar program like this one year with minus s i can also still take is as input for the compiler the compiler than just a piano sampler. -->
<!-- - `1:14:34`: okay and then and. -->
<!-- - `1:14:38`: the next thing which i didn't do for the stream copy but all can do it manually let's do it here for. -->
<!-- - `1:14:46`: for this one maybe. -->
<!-- - `1:14:52`: read so this would be the exemplary out instead of minus s a se lower case c then i get actually in up by key i should not name in essen and then i get at a lower case an object file. -->
# ==============1:15:00==============
<!-- - `1:15:07`: and the braids of this is dumb. -->
<!-- - `1:15:13`: you see it it's something and three and then this object file and. -->
<!-- - `1:15:19`: and can be and i can look at into this object file with this object dump thing we also did before and with d i get. -->
<!-- - `1:15:28`: that this assembly so this is now real machine call in a certain sense so he can i think we looked at it also are likely the hex the right services not like the term. -->
<!-- - `1:15:39`: and. -->
<!-- - `1:15:41`: if i tried to to look at it with the with less sensitive binary right it's completely. -->
<!-- - `1:15:48`: machine code. -->
<!-- - `1:15:51`: so this is an object file that's like what we get here. -->
<!-- - `1:15:57`: and and usually we also get from them. -->
<!-- - `1:16:02`: the external libraries object files and then we put them together and this is called linkedin and then that at the end gives you the programmer. -->
<!-- - `1:16:18`: and then you can principle execute this program that means actually telling your os, oh here's a program you want to execute it and the operating system actually needs to load that program **there's a loader** another program which for. -->
<!-- - `1:16:35`: put this into memory and then starts executing it. -->
<!-- - `1:16:41`: okay so this already the fourth and tools. -->
- `1:16:45`: **compiler assembler they're usually merged** but they can do them separately then there's a linker which which puts together an executable and **then there's a loader which actually also will be going to see will also do some sort of linking**.
<!-- - `1:17:02`: okay and then there's like different and put a pieces in this object module and you saw it like it's a strange less file here in but it has done. -->
<!-- - `1:17:14`: i am. -->
- `1:17:17`: many other things so if i put here mine is d c love lots of other sections and comments and then disassembly of the section comment and i'm alright and i **could also put a symbol table in it**.
<!-- - `1:17:33`: hmmmm. -->
- `1:17:35`: okay then we have said these objects then you can merge them together so you put these individual parts like the text is the program code you would need to and writer **if one object file has a function called by the other one you like put the addresses together** record would put in y.
- `1:17:55`: one that **would fix sort of this global addressing one to point to the**.
- `1:18:00`: **the function address in the other one**.
<!-- - `1:18:06`: and yet there's this thing with the local local location dependent but we'll we'll talk about this in a minute in an array and then you're your own mom was done. -->
<!-- - `1:18:19`: except that actually there's something which is called **dynamic linking** which is happening at runtime by the loader and we'll we'll talk about this also in **in a minute**. -->
<!-- - `1:18:32`: okay then then the program is loaded by the lord then you're and you put it the light the the the machine called right in there and executable you would need to generate a **virtual address space** for the process this will be discussed in this lecture **later**. -->
<!-- - `1:18:49`: then we copy text and also this data and into this virtual address space then bill will set up the stack these registers here. -->
- `1:19:00`: and will actually later needed two other other sitteth like system or registers as well and then we just started the startup routine you can think of pisses me it is another one outside of maine but but that's the alive then **when you come back from main you need to clean up and this is done actually also by our system call** so this piston back.
<!-- - `1:19:21`: the. -->
- `1:19:22`: and then **gives back**.
- `1:19:26`: **the execution to the kernel** that's like what's happening when you load and now to this last part for today.
<!-- - `1:19:33`: what's dynamic linking and maybe hope i'll show you forest in. -->
<!-- - `1:19:41`: count how you how you do this them in in reality so all just taken our and and one of the. -->
<!-- - `1:19:51`: the arbitrary program said like i have for instance here some. -->
<!-- - `1:19:57`: some such a sat solvers am i'm working with and there's like a. -->
# ==============1:20:00==============
<!-- - `1:20:03`: you're the boy object files right and they're linked together here into actually a library but this is just like a list of objects and then at the end you get here a binary am. -->
<!-- - `1:20:20`: and this one is not really an completely link yet it will only only the the and dependencies of function addresses inside here of this objects files are put together right so they will point to each other. -->
<!-- - `1:20:34`: but and that's why i'm showing you this now. -->
<!-- - `1:20:39`: they are still and dynamically linked libraries which are not them. -->
<!-- - `1:20:44`: resolved yet in a certain sense your. -->
<!-- - `1:20:48`: this is this assembler code still has some dependencies on external memory libraries and yet in particular the lipsey so you could take something bigger like like firefox or whatever let's try the firefox. -->
<!-- - `1:21:05`: at. -->
<!-- - `1:21:07`: the issue is not as dedicated solely to find something which is aesthetic the cheese sees other probably not one. -->
- `1:21:19`: and this says also sorry about that i thought like there's this one anyhow so you will see many more read understand any libraries i kind of also **object files which need to still be linked to your program while you're loading it**.
<!-- - `1:21:37`: good. -->
- `1:21:39`: and and desert him and and and and what i want to explain europe now is how this is done in them kind of in the center and the reason is mentioned here by white people are doing this year on the on the slight right so **you can have your program depend on sort of the latest version of the c library...**.
- `1:21:58`: rewrite that then and **then if there's a new c library don't need to recompile the program**.
<!-- - `1:22:06`: and you can **simply start the programm in which is linked to the new version which just was downloaded of there's a security fix it's exactly the same**. -->
<!-- - `1:22:16`: and. -->
- `1:22:18`: the and that's what i wanted to to explain **how this is achieved down on the thumb assembler level with the instruction that**.
- `1:22:29`: **we already know[...]** so **this one here is kind of the machine code of my program which still has some dynamic linkage** oh by the way **in windows uses the term dll this is the idea that you dynamically link**.
- `1:22:49`: **library** or teen ready.
<!-- - `1:22:52`: and so this this address here in this jl instruction this is loaded to the texts we compiler ok so this was one maybe this could be in another object file re. -->
<!-- - `1:23:05`: but when i link them together i'll just sort of redirect the addresses that slight disruptors are all here. -->
<!-- - `1:23:14`: and but this one here that's a dependency and into the c library like fences mellow crates if you call malloc from c it will actually go to the lipsey mellow. -->
<!-- - `1:23:26`: and. -->
<!-- - `1:23:28`: and. -->
<!-- - `1:23:34`: they all show this pump curse. -->
<!-- - `1:23:39`: we're at this so if you'll look at the data within 'em for four symbols here can then on. -->
- `1:23:48`: this simple with a **lowercase t here, this is a local symbol which does not need to** them.
<!-- - `1:23:57`: i am. -->
- `1:23:58`: **which is local to that binary right but if for instance we go to malloc then you see this thing is actually undefined because it's in libc in this dynamic library we still need to get** linked again.
- `1:24:14`: **so now if my code executes malloc**.
- `1:24:20`: **it follows here this sort of long distance here chain of things to actually call the malloc down here** right **so this is the address of the mellow here, this data here** now doesn't work greater so **this is like several indirections**.
- `1:24:39`: correction so **first of all you will have here not a direct jump, you cannot jump from here to here directly what you can do instead you load from a data segment of your program you load the address where you're going to jump to** great.
- `1:24:59`: and **initially this address, this can be modified down and goes for instance here and then to this dynamic linker load library which knows the name of the routine which you want to jump to**.
# ==============1:25:00==============
- `1:25:15`: to jump to and **then if the library is not loaded because it's not in the process yet then you need to actually execute this loader routine to get the program code of this external library in this case libc into you process** okay and **then there you find the address**.
- `1:25:35`: **of this actual routine like malloc**.
- `1:25:40`: entered but in order **now that we have that address nothing prevents you from cashing it and putting it simply here and the next time you call malloc you will not go to this chain and really do disk i o, you will just jump one indirection directly to this address** and **as you can see this**.
- `1:26:00`: **this has one penalty, you need to do an indirection and you need to load first the address where you need to jump to every time you call this external one**. **you do static linking this would go away malloc would be jump to exactly in the same way as**.
- `1:26:20`: **here** and yeah we could do that and with this i stop here for instance with my code here if i am.
<!-- - `1:26:30`: if i do earn static then. -->
<!-- - `1:26:35`: the first thing you will realize is if he allowed that to again ltd then it's not a dynamic executable. -->
<!-- - `1:26:44`: and earth. -->
- `1:26:46`: if **i do nm then there should be no u anymore**.
- `1:26:53`: yeah though you anymore and let's see where the map may look at it like that you see **the malloc now has a t here which means like a globally visible**.
- `1:27:05`: and he bought a **text which is really inside of everything** and now **then you don't need to have this indirection here**.
- `1:27:16`: which we have here right **first load the address of malloc and then jump to it** the **first time is of course even more expensive because we really have to load the library from disk but then if you call it the second time the library you don't need load anymore** and if **if you call the symbol the second time then you will**.
- `1:27:36`: **just jump like one in direction to here**.
<!-- - `1:27:42`: okay so this closes and the thing on linking entire on synchronization and if there are no more questions on this linking thing are there any questions you then i would say we see each other on thursday june thirteen. -->
<!-- - `1:28:00`: why. -->
<!-- - `1:28:01`: for. -->
