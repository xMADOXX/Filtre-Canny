function image_traitee = supprimerNonMax(Es, Eo)
    
    afficherLogs("Suppression des non-maximums");
    [N,M] = size(Es);
    
    for x = 1 : N
        for y = 1 : M
            
            [x1, y1, x2, y2] = recupererPixelsVoisins(Eo(x,y),x,y);
//            disp("pixels voisins:"+string(x)+':'+string(y)+":"+string(Eo(x,y)));
//            disp("x1: "+string(x1))
//            disp("y1: "+string(y1))
//            disp("x2: "+string(x2))
//            disp("y2: "+string(y2))            
            voisin1 = verifierSiPixelExiste(x1,y1, Es);
            voisin2 = verifierSiPixelExiste(x2,y2, Es);
            
//          Si la valeur du pixel courant est inférieure à l'un de ses deux voisins
//          on affiche le pixel en noir
            if (Es(x,y) < voisin1) | (Es(x,y) < voisin2) then
                image_traitee(x,y) = 0;
            else
                image_traitee(x,y) = Es(x,y);
            end
        end
    end
    
    afficherLogs(image_traitee)
endfunction
