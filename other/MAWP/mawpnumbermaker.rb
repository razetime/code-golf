for i in (1..1000) do
	File.write(?m,"1M"*i + ":\n", mode:?a);
end