function [Es, Eo] = calculGradient(image)

    [Gx, nom1] = creerFiltreGradientX()
    [Gy, nom2] = creerFiltreGradientY()
    Jx = appliquerFiltre(image, Gx, 0, nom1)
    Jy = appliquerFiltre(image, Gy, 0, nom2)
    
    [N,M] = size(image)
    for x = 1 : N
        for y = 1 : M
            Es(x,y) = sqrt(Jx(x,y)^2+Jy(x,y)^2);
            Eo(x,y) = approximer(atan(-Jx(x,y),Jy(x,y))*180/%pi);
//          arctan(x/y) resultat en radian puis convertit en degrés
        end
    end
    
    afficherLogs("Norme du gradient");
    afficherLogs(Es)
    
    afficherLogs("Angle de la normale du gradient")
    afficherLogs(Eo)
endfunction
