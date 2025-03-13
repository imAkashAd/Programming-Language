name = "Akash Adhikary"

print(len(name))

slice = name[1:9:4] # it will select the characters between 1:9 and it will jump by 4 steps
print(slice) # it will print kA from 1 to 8

replaced_word = name.replace("Adhikary", "Akash")
print(replaced_word)

index = name.find("Adhikary")
print(index)

print(name.startswith("Aka"))
print(name.endswith("ry"))

count = name.count("a")
print(count)