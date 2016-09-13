book('the hobbit', tolkien).
book('the fellowship of the ring', tolkien).
book('the two towers', tolkien).
book('the return of the king', tolkien).
book('fingersmith', waters).
book('the paying guests', waters).
book('tipping the velvet', waters).
book('affinity', waters).
book('steelheart', sanderson).
book('firefight', sanderson).
book('calamity', sanderson).
book('way of kings', sanderson).
book('words of radiance', sanderson).
book('game of thrones', martin).
book('clash of kings', martin).
book('storm of swords', martin).
book('feast for crows', martin).
book('dance with dragons', martin).
book('the little stranger', waters).
book('the night watch', waters).
book('name of the wind', rothfuss).
book("wise man's fear", rothfuss).
book('doors of stone', rothfuss).
book('carrie', king).
book('cujo', king).
book('christine', king).
book('it', king).
book("salem's lot", king).




author(tolkien, fantasy).
author(sanderson, fantasy).
author(waters, 'historical fiction').
author(martin, fantasy).
author(rothfuss, fantasy).
author(king, horror).

book_info(X,Y,Z) :- book(X, Y), author(Y,Z).
