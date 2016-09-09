book('the hobbit', tolkein).
book('the fellowship of the ring', tolkein).
book('the two towers', tolkein).
book('the return of the king', tolkein).
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

author(tolkein, fantasy).
author(sanderson, fantasy).
author(waters, 'historical fiction').
author(martin, fantasy).

book_info(X,Y,Z) :- book(X, Y), author(Y,Z).
