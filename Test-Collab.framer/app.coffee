# Import file "LoFi"
sketch = Framer.Importer.load("imported/LoFi@1x", scale: 1)
# Import file "LoFi (1)"


positon = []
k = 1
len = sketch.ConversationCallSolved.children.length

for child in sketch.ConversationCallSolved.children
	child.opacity= 0
	positon.push(child.y)
	child.y = child.y+100


# Set up FlowComponent
flow = new FlowComponent
flow.showNext(sketch.CallDefault)

# Switch on click

sketch.ResponseInbox.opacity = 0
sketch.ReadyForCall.opacity = 0
sketch.CallOnStatus.opacity = 0
sketch.InboxButtonCallDefault.onClick ->
	flow.showNext(sketch.Inbox)
	sketch.ComentButtonInbox.onClick ->
		sketch.Inquiry2Inbox.animate
			y:sketch.Inquiry2Inbox.y+225
			options: 
				curve: Bezier.ease
		sketch.Inquiry3Inbox.animate
			y:sketch.Inquiry3Inbox.y+225
			options: 
				curve: Bezier.ease
		sketch.ResponseInbox.animate
			opacity: 1
			options: 
				curve: Bezier.ease
				
sketch.CallButtonInbox.onClick ->
	flow.showPrevious()
sketch.NotReadyForCallButton.onClick ->
	sketch.CallOffModeStatus.opacity = 0
	sketch.NotReadyForCallButton.opacity = 0
	sketch.ReadyForCall.opacity = 1
	sketch.CallOnStatus.opacity = 1
	Utils.delay 1, ->
		flow.showOverlayRight(sketch.RightSideBar)

sketch.CancelCallButton.onClick ->
	flow.showPrevious()
sketch.PopUpCallSolved.opacity = 0
sketch.PopUpWithRatingCallSolved.opacity = 0
sketch.ChartCallSolved.opacity = 0
sketch.PinnedPossibleSolutionsCallSolved.opacity = 0

animationScroll =  new Animation sketch.ConversationCallSolved,
	y:-400
	options:
		time:5

sketch.AnswerButton.onClick ->
	flow.showNext(sketch.CallSolved)
	Utils.delay 1, ->
		sketch.ConversationCallSolved.children[len-1].animate
					opacity:1
					y:positon[len-1]
					options:
						curve:Bezier.ease
	sketch.ConversationCallSolved.children[len-1].onClick ->
		sketch.ConversationCallSolved.children[len-2].animate
			opacity:1
			y:positon[len-2]
			options:
				curve:Bezier.ease
		sketch.ConversationCallSolved.children[len-3].animate
			opacity:1
			y:positon[len-3]
			options:
				curve:Bezier.ease
				delay:1
	sketch.ConversationCallSolved.children[len-3].onClick ->
		sketch.ConversationCallSolved.children[len-4].animate
			opacity:1
			y:positon[len-4]
			options:
				curve:Bezier.ease
		sketch.ConversationCallSolved.children[len-5].animate
			opacity:1
			y:positon[len-5]
			options:
				curve:Bezier.ease
				delay:1
		sketch.ConversationCallSolved.children[len-6].animate
			opacity:1
			y:positon[len-6]
			options:
				curve:Bezier.ease
				delay:2
	sketch.pinCallSolved.onClick ->
		sketch.PinnedPossibleSolutionsCallSolved.animate
			opacity: 1
			options: 
				curve:Bezier.ease
				delay:0.5
	sketch.ConversationCallSolved.children[len-6].onClick ->
		sketch.ConversationCallSolved.children[len-7].animate
			opacity:1
			y:positon[len-7]
			options:
				curve:Bezier.ease
		sketch.ConversationCallSolved.children[len-8].animate
			opacity:1
			y:positon[len-8]
			options:
				curve:Bezier.ease
				delay:1
		sketch.ConversationCallSolved.animate
			y:sketch.ConversationCallSolved.y-200
			options: 
				curve: Bezier.ease
	sketch.ConversationCallSolved.children[len-8].onClick ->
		sketch.ConversationCallSolved.children[len-9].animate
			opacity:1
			y:positon[len-9]
			options:
				curve:Bezier.ease
		sketch.ConversationCallSolved.children[len-10].animate
			opacity:1
			y:positon[len-10]
			options:
				curve:Bezier.ease
				delay:1
		sketch.ConversationCallSolved.children[len-11].animate
			opacity:1
			y:positon[len-11]
			options:
				curve:Bezier.ease
				delay:1
		sketch.ConversationCallSolved.animate
			y:sketch.ConversationCallSolved.y-200
			options: 
				curve: Bezier.ease
	sketch.ConversationCallSolved.children[len-11].onClick ->
		sketch.ConversationCallSolved.children[len-12].animate
			opacity:1
			y:positon[len-12]
			options:
				curve:Bezier.ease
		sketch.ConversationCallSolved.children[len-13].animate
			opacity:1
			y:positon[len-13]
			options:
				curve:Bezier.ease
				delay:1
		sketch.ConversationCallSolved.animate
			y:sketch.ConversationCallSolved.y-200
			options: 
				curve: Bezier.ease
	sketch.ConversationCallSolved.children[len-13].onClick ->
		sketch.ConversationCallSolved.children[len-14].animate
			opacity:1
			y:positon[len-14]
			options:
				curve:Bezier.ease
		sketch.ConversationCallSolved.children[len-15].animate
			opacity:1
			y:positon[len-15]
			options:
				curve:Bezier.ease
				delay:1
		sketch.ConversationCallSolved.animate
			y:sketch.ConversationCallSolved.y-200
			options: 
				curve: Bezier.ease
	sketch.ConversationCallSolved.children[len-15].onClick ->
		sketch.ConversationCallSolved.children[len-16].animate
			opacity:1
			y:positon[len-16]
			options:
				curve:Bezier.ease
		sketch.ConversationCallSolved.children[len-17].animate
			opacity:1
			y:positon[len-17]
			options:
				curve:Bezier.ease
				delay:1
		sketch.ConversationCallSolved.animate
			y:sketch.ConversationCallSolved.y-200
			options: 
				curve: Bezier.ease
	sketch.ConversationCallSolved.children[len-17].onClick ->
		sketch.ConversationCallSolved.children[len-18].animate
			opacity:1
			y:positon[len-18]
			options:
				curve:Bezier.ease
		sketch.ConversationCallSolved.children[len-19].animate
			opacity:1
			y:positon[len-19]
			options:
				curve:Bezier.ease
				delay:1
		sketch.ConversationCallSolved.animate
			y:sketch.ConversationCallSolved.y-200
			options: 
				curve: Bezier.ease
	sketch.ConversationCallSolved.children[len-19].onClick ->
		sketch.ConversationCallSolved.children[len-20].animate
			opacity:1
			y:positon[len-20]
			options:
				curve:Bezier.ease
		sketch.ConversationCallSolved.animate
			y:sketch.ConversationCallSolved.y-100
			options: 
				curve: Bezier.ease
		sketch.PopUpCallSolved.animate
			opacity: 1
			options: 
				curve: Bezier.ease
				delay:1
		sketch.ChartCallSolved.animate
			opacity: 1
			options: 
				curve: Bezier.ease
				delay:2
	sketch.RatingCallSolved.onClick ->
		sketch.PopUpWithRatingCallSolved.animate
			opacity: 1
			options: 
				curve: Bezier.ease
			
		
	
# 	while k < 5
# 		sketch.ConversationCallSolved.children[len-k].onClick ->
# 			k = k+1
# 			sketch.ConversationCallSolved.children[len-k].animate
# 				opacity:1
# 				y:positon[len-k]
# 				options:
# 					curve:Bezier.ease

			
		
		
