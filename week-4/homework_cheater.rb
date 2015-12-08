#assign array to variables
#write generic string paragraph
#define method
#assign arr[0] to name
#insert array strings into generic paragraph
#return paragraph

#(operating system) is an operating system that runs on (device).  It was developed by (company).
# Their CEO is (CEO).  (thesis statement).

windows = ["Windows", "Windows", "PC", "Microsoft", "Satya Nandella", "They are one of the pioneers of modern computing"]
os_x = ["OS X", "OS X", "Mac", "Apple", "Tim Cook", "They've been an innovative giant in today's tech world"]
android = ["Android", "Android", "Nexus 6P", "Google", "Sundar Pichai", "They made the world's most popular search engine"]

def essay_writer(arr)
	title = arr[0]
	paragraph = arr[1] + " is an operating system that runs on " + arr[2] + ".  It was developed by " + arr[3] + ".  Their CEO is " + arr[4] + ". " + arr[5] + "."
	puts title + ":"
	puts paragraph
	return paragraph
end

essay_writer(windows)
essay_writer(os_x)
essay_writer(android)