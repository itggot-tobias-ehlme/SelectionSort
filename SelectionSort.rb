def selection(unsorted) #N är den osorterade listan.
  min = 0 #Här lagras det minsta nummret.
  i = 0 #I står för Index.
  i2 = 0 #Är till för de osorterade numren
  switch = false #Switch gör så att den byter plats. Så om switch är sann så byter den plats.
  while i < unsorted.length #Denna loopen är till för hela listan.
    min = unsorted[i] #Flyttar den första index till minimum
    i2 = i #Detta är index till den andra loopen
    while i2 < unsorted.length - 1 #Detta är till för att hålla reda på vilken är den minsta numret
      if min > unsorted[i2 + 1] #Letar efter det minsta talet
        min = unsorted[i2 + 1] #Om det är sant så byter den temporärt med den minsta
        min_i = i2 + 1 #Gör så att vi kommer ihåg vart den minsta talet ska bytas
        switch = true #Det är sant att vi ska byta senare
      end
      i2 += 1 #Då ökar vi altså vi går till nästa tal i listan
    end
    if switch #Kollar om det är det sant att vi ska byta
      unsorted[i], unsorted[min_i] = unsorted[min_i], unsorted[i] #De byter plats, Den mista och plats i byter plats
      switch = false #Den markerar att den har vart här innan
    end
    i += 1 #Då ökar vi index i med 1
  end
  return unsorted
end
x = [23, 42, 4, 16, 8, 15, 100, 5]
p selection(x)
