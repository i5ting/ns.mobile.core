# // module("setUp/tearDown", {
# //   setup: function() {
# //     //console.log("Before");
# //   },
# // 
# //   teardown: function() {
# //     //console.log("After");
# //   }
# // });
# // 

m=require("views/meeting")
meeting = new m()

dummy = 
	setup:() ->
		console.log "setup"
	teardown:()->
		console.log "down"
		
module("app.js test",dummy)

test("app.js test", 
	()=>
        mike = 0
        equal(mike++, 10)
        equal(mike, 1)
        app = require("views/meeting")
        console.log new app('dd')
);

test("app.js string ptest", 
	()=>
        r = meeting.ptest("alfred")
        console.log r + "_______"
        # equal( 0, 0, "---");
        # equal( r, "alfred","测试ptest方法返回一个字符串")
);