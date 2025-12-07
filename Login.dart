import 'package:flutter/material.dart';
import 'package:secondapp/pages/FRGTPASS.dart';
import 'package:secondapp/pages/Shop.dart';
import 'Registration.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _bodyUI());
  }

  Widget _bodyUI() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const Text(
            "Login",
            style: TextStyle(
              color: Colors.teal,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),
          const Text("Please enter your details"),

          const SizedBox(height: 30),
          const Text(
            "Your email",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 2),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                labelText: "Enter your email",
                suffixIcon: Icon(Icons.email),
              ),
            ),
          ),

          const SizedBox(height: 20),
          const Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),

          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 2),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                labelText: "Enter your password",
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.network(
                    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTEBMWFRUXGBcYGBUYFxcYGBMXGxUXFhUXFhUYHSggGBolGxUVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGhAQGy0lHiYtLy0vMC0tLS0tLS0tLS0tLTIvKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBEQACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAABAIDBQEGB//EAEAQAAECAwQHBwMBBgYCAwAAAAEAAgMRIQQSMVEFExQiQWFxBjKBkaGxwVLR8PEjM0JicuEHFlOSouKC0mOywv/EABoBAQACAwEAAAAAAAAAAAAAAAABBQMEBgL/xAAzEQEAAgECBgAEBQMDBQAAAAAAAQIDBBEFEiExQVETIjJhFXGBkaEUQrFSYvAjMzTR4f/aAAwDAQACEQMRAD8A+4oMp2JQaULujoPZAhH7x6oHbN3R+cUClr7x8PZAzY+74oKLd3h0+SgssOB6oOW/h4/CDlhxKCdu7o6/BQVWLveCBi190+CBWy94fnBA5aO6eiBCF3h1Hug0X4HogzAg1UGU7FBpw8B0CDOjd49Sgfs/dCBO194+HsgZsfd8Sgotve8PkoLbDgeqBlBlXjmg02tEsEGfFNT1KB6CBdHRAlaDvH84IG7KN0T5+6Be1mTqZILbHUGefwEELbQiSDtirOfL5QQ0lGawAucGjMkBebXrXraXumO152rG7H/zPZmEzeXcmgn1wWpfiGCvnf8AJvY+Fam/9u35k7V21hESZCf1JaPYla9uK08Vlt04Hln6rRBSH2zIM9TPq/8A6rx+Kz/pZfwL/f8Awm/twSJagD/z/wCqfis/6T8C/wB/8JWftkyYvw385EH3kvVeK181ljtwLJH02hrQu1tkcJXiwkfxNOPUTCz04jgt3nZqZOE6mvjf8pN2a0tfIscHCeIM1uUyVvG9Z3aOTFfHO142a10ZL2xsu8cyg0w0ZIM55Mz1KB+EN0dAgTtB3igaso3RPn7oFrWd6iC+x1bXP7IK7ZQiWSBe8cyg0dW3IeSBBzzPE+ZQOw4YIEwMBwQKRXkEgEiqBqA0FoJAJzKBa0OIcQDIZBBfZmgtma9aoKrUZGTaU4UzQZVt7RwIIIedY/g0VI6nBq08+txYum+8/Zv6bhufP1iNo9y8xpHtZHifu5Qm/wAvePV32kqvLxHLf6ekL3BwfBj63+af4YcWI5xm9xcc3Ek+ZWja1rTvM7rOlKUjasRCMlD26gEHEAgJILrJanwnX4Ti13oeRHEL3jyWxzzVnZhzYMeavLeN3vdCaY17JzIcKObM0OY5FdFpNTGeu/mO7kddo7abJt4ns9Dqm5DyC2mizzEOZ8ygfYwSFBhkgSivIJAJxzQNwGAtBIBOZQLWhxDiAZDIdEF9maC2ZqedUFVqMjIUpwpmgnZBMG9WvGqC/VNyHkECGudmUDrYLZYBAm+I4EgE4lA3ChggEiskC0Z5DiAZDJBfZ2BzZuEzmgS0tb2QBee663IYk5AcSsWXNTFXmtLPg0+TPblpG7w+mO0sWNNrNxn/ACcObuA5D1VHqNffJ0r0h02k4Vjw/Nfrb+GIGrQWqSkCAUgQCAQCAQCDX7JWm5aWA91+4R17vqB5rb0OTkzR9+it4rhjJp5nzHV73XOzK6Nx54QW5BAk+K4EgE4oG4UMEAkCZCBaM8gkAyGSC+AwFoJEzWvigptDi0yaZBBbZmhwm6pnxQQtJukXadEFOudmUDuztyQKGO7NA0yC0gEipqgWiRXAkA0CC+FDDgCRMlBj9oNNtswkDNx7rB7nILU1Wqrhj7t7RaG+pt06V8y+fW+2xIzy+K68fQDIDgFz+XLfLbezrsGnx4K8tIUhY2Z1SBQBSBAIBAIBAIBQHdBtJtEID6wfKp9ln0sb5q/m09faI095n0+qbO3JdQ4koY7s/ZA02C0gEjFAs+M4EgGgQMQoQcASJkoKI0QtJDTIZILYDA4TdUoK47i0ybQSmgnZxeE3VQW7O3JAptLs/QIGhZ25epQLOjuBIBoKIL2QGuAJFSgUtlqMOYaZZUmtHXa2umpv/dPaGbDim9vs+a6VhRRFcY5vOdW9wcOWXTguejL8WeaZ6uz0l8U44rjjaI8FkbARIUgQCAQcmgEAgEHVA4UHsOw2hiZ2iIKSkwZ/U7pwHirbhuCZn4s/o57jOsiY+BX9f/T0+0uz9ArlzxoWZuXqUCzo7gZA0FOCBhkBpAJFTVBREilpIGAQWwoQcLzsT+iCuK8sMm0CCcFgeJuqcEEYxuUbSaCvaXZ+gQM7K3mgoNpcKUQXNs7TUzrVBRFtJZMcAsOoz1w45vbw9UpNp2hkRohe4uPFcTnz2zZJvZbUpFI2gtbLIyI268THA8WnMHgV4peazvDLjy2x25qy8hb7E+C667A913Bw+DyW9S8XjeF7p89c1d47+YLr22AgEHFAvs1jiRP3bHO5gU8TgFkpivf6Y3YcuoxYvrtENixdko7+8WM6mZ/409VuU4bmt32hW5ONYK/TEy0HdiJCbo3kz7lZ44X7s1Z47Pin8q29jZmTY1ebfsUnhfqxHHZ80/lTauxcdoJa5jx1LT5ES9VhvwzLH0zEtjHxvDP1RMEIfZu1Ey1YHMvZL0JKxRoM8zty/wAw2LcW0sRvFt/0l6HRnYtrd60ODpVuNnd8TielFuYOGRE75J3+yr1PGrWjlxRt9/L0DLQQAAAAKAAUA5K2iIiNoUkzv1kzsjealCg2p3JBc2ztNTOtUFTo5BkJSFEFjIIcLxxKCt8UsN0YD9UE4cMPF52KCMV5YZNwxr+ckEoTb9XcMkE9kbzQU7Y7IeqCwWUGsz6IKzaSKCVKeSDLt0a86nj14rkeK6v42Xkr9Mf5WWnxctd57qAqtndQU2qzNiNLXiYPmMiDwK90tNZ3h7pe1Lc1Z6vI6S0e6C6Rq0912fI5Fb1MkXhe6fU1zV+/mCi9tlfYbFEjPDITS4+gGZPAL1jx3yW5aww59RjwV5rzs9jYeycOEA6NKI76a3B4Yu8fJXOn4bSvXJ1n+HN6rjGXJ8uP5Y/l6CA0O3ZBoGAaJclZRWIjaFRMzM7ysey5vDpVShFkUv3ThyQSfBDBeE5jPyQQbHLt0ykUFjrOBUE0r5VQV7U40kKoLNkbmfT7IKtsdkPVBbsgzPp9kFZtJFJClEFjbOHbxJrVBW6OWm6JSGaCbIIeLxnM5eXwgi+IWbow5oJMZrKupwp+c0HHu1dG1nWqCG1uyHqgs2MZlBHayKSQU20Brb06uwHM1VfxLU/AwTMd56QzYKc12SFxi0dUoCAQVWiA17S14mDiPzA816raazvD1S80nmr3YUDsvFfFDGn9niYh/hGRHF3urXSY7aqdo6e1lfitMeLmtHzev+eHtbFYmWZoZCFDiTiSOJPHFdLhwUxV2q5nUai+e/NeTLTrMaSWZgDmauorOiAbEv7ppxQdMK5vCqCIjX90iU/1QSNnDd6eCCO0l1JY086IJGygVnhVBHbDkEEtjGZQR2s5BBLZQazxqgjtBbuywogkIF7enKaCJjFm6BOXH1QSbCv7xog4X6vdFePx8IBrdZU0lRB3YxmUHNs/l9f7IDZJ1n6IMzSUWbg3g2njmuS4vqPiZ+SO1f8AKx01Nq7+yoVU2HUAgEEoMIucGjisuDDbNeKV8vN7xSu8tiGNULorPwXbabT0wY4pVV3vN53lL95yl4zn+izvAlq64z8EBe1lMJVzQGr1e9OfCWCA1t/dlLnigNTc3pzlw9EBtF7dlKdJzQGy3d6eFZSyqgNrnSWPP+yA2P8Am9P7oDbf5fX+yA2P+b0QG1SpLCmP9kBs17enKdcEBr7u7KcuM0Bqb+9OU+GPJAa25uynzwQFzWb2HDPn8oC9q6YzrkgNs/l9f7IObGc0EjawOGC8ZbxSk2nwmI3nZhOdMkniZrgb357TafK4iNoiAoAgEAoGjo+TBMirq9BwXVcH0vJj+LbvP+FfqcnNbb0bI1lRSSuWsB+zxrP4/VAE6ygpJABurqazogDE1m6KcUAIVzenNB0xr+7KU+PqgiLOW705yQSNpvbssaedEEdlIrPBBLbBkgjsZz9EEtrGSCOyzrPGqCW03d2WFEETAvb05TQdEa5uynLj6/KAMK/vCiAD9XQ14/nkgC3WVFJUQc2M5+iCe2NyKBS3Qi1hdMV+VW8Wycmlt9+jNp43yQywuOhaS6pQEAgkxsyB+S4rLp8Xxctae5eL25azLZMO/VtAKV/Oa7utYrERCpmd3WO1dHVnkvQH/tO7SWfP9EAwavGs8kA9+soKSrVBxjLm8a8KIJOih+6MeaCLYJYbxwGXkgk60B26AZlBAWcisxSvlVBYbUDSRqp2l55q+1WynMKE80LdsGRU7Sjmr7VGzHMKE80LRaQKSNKKdpRzV9q3QC6sxWqhPNHtNscNF0gmWSnaUc1faDoV83hITzxy+FGyeaPabItzdNeiJRezWVFOFfzmg6x2roazrRBLbBkfRBVsjuSBfSkYFoAz9gqLjtv+nWvuW1pI+aZZoXMwsHVKAgEDOj4Jc4y4BW3BcfNn5vUNbVW2rs1Ib7lHdafnJdYr3Igv1bwzQEL9n3uOXL9UBEOs7vDNByG25V3SiCUR4eJNxxqgiyEWG8cOSCb4wcLoxP6oPPdotNiySAk6KahvAD6ncuXFbel0s5us9IVfEeIxpo5a9bT/AA8NbtNWiMSYkVxn/CDdb/tFFdY9Pjp2hzGbWZ8s72tJPWu+o+ZWTlr6YOe3uf3d1zvqd5lOWvqDnv7n9xrnfU7zKctfRz29z+417/qd5lOWvqDnv7n9xrnfU7zKctfRz29z+41zvqd5lOWvqDnv7n9xrnfU7zKctfRz29z+4EZ31O8ynLX0fEv7n92roztJHhEXnGIzi1xmZcnGoPotXNo8eSOkbS3dNxPPgnrO8epfRtFaRhvhh7DMOr04EHIiSpMuOcdprZ1+DPTPji9O0mIjb9W8KVWNmQ2R3JAxtTc/RBk6SYRKfElc5x3vRu6PyUCoG4EAgEGhol4beJ5LoOBV+uWlq+8G4zL5m3DD8810TTSgm5R3FByNvyu8MeGP6ICCLne4oOxnXxJuOKCEJhYZuwwQWRYgeJNxQVNhlm87AY+SmI3nZFrcsTMvkmkraY0V8V2LnE9Bg0eAkF02KkUpFYcDqMs5clrz5LrIxBEBAIBAIBAIBAIPV9gbQ4vfC4EXxyIofOY8lWcSp8sXX3As0xe2PxPV7yC65R1JqndOs2pufogV2d2XsgX0u8G7LhNc5x3vRu6PyQVA3AgEAgbsDCZyXQcCn64aWr8NKA4MEnUOP5LouiaaMcX5FtZfnFB2z7k71J4fgQdjm/K7WX5xQRgC4ZuoMPySCcdwcJNqcfyaCuCwtM3CQQTtTg9jmtNSCAvVJ2tEseWvNSYj0+LlhaSHUIMiMiKFdRE7xu4C0TEzEuogKUBQmQgEQESEQESFIEQ9N/h86VpcThq3f/Zq0OI/9qPzXHBP/I/R7+OL9W1/Oao3Wqtndl6hA7rm5hBk6QhmUyOKoeO1+Slvu29JPzTBFc23nUAgED2iYoDiDxCuOCZNs01nzDV1VfliTloF4zbUS4LqmgnZjdBvU6oOWneldrKeCDlm3Z3qdUErS4OEm1rwQQs7S0zdQSQWx3hwk0zOSCiCwhwJEhn4IPD9tdB3YhjwRNjqvA/gdxMsjj1VzodVFq/DtPWOzluLaC1LzlpHyz3+0vKKxUjs0AgEAgEAiAj0EQFKHquwEEufFIE5NaPMk/8A5VZxO3y1he8BrvkvP2e9sxug3qdVTuoXa9uYQIap30nyKCzSJBhGomJGU1WcXpzaaft1Z9PO2SGMFx6zdUoCACCUN0iCs+lzfCzVv6l4yV5qTDbsjgBvUrxpwC7qJ3jdUo2veIu16V9lI7ZN2d6mGNM80HbWb0rtelfZBCyi6SXUpxogstLgRJta8KoKbO0h0yJDM0QMR3gtIBBOQrxQKwoZmJgy4zFENt2fpHsxY4k3XQ1xn3HSmf6cJ+C2sety06bq3NwrTZJ322n7MwdioHHW+Y/9Vm/EcnqGv+B4Pcr/APJNk/1H/wC9v2UfiOX7H4Hg9yo/yXB/+Xz/AOqn8RyeoR+B4Pcr/wDJNk/1H/7m/wDqo/Ecv2T+B4PcvC6VgsZGiMhEljXEAmRJlQ1HOat8NrWpE27ub1NKUy2rTtBVZGAI9BS8uIl9C/w5hBsF73SF58hOkw0fclUvErb5Ij1DqOBY9sVre5ektW8Rdr0r7KuXijVO+k+RQaN8ZhBmvYTOh48FizY4yY7VnzD1W3LMSy5SouDtWazMT4W8TvG7qgCAQBUB+BFLmjMCX2XXcJ1XxcPJPeFdqMfLbf2esdAZ0Vq13LZWUq44eCDljoTOiCdsMwJVqgqslHVpRBfajNtK4IFrOJOE/wAogbjuF0yyQJQmmYocR7oH3uEjUIM4MORQaV8ZhB5vtFpDUQnP/iO6zm48fDHwWxpcPxckR4aHEdV8DDM+Z6Q+ZronEuokIBShwlB9S0NYtVZ4TJVuAu/qJLj7rm9Tfny2l3Ogw/C09a/Zr2OgM6VWBuL74zCDMQabcAgwLeyTycyfdcfxXB8LUTMdp6rLT35qbelKrWwEQEAgss8cscHDxGYWxpdTbT5IvH6/kx5McXrs1LS8OukVBC7bFlrlpF69pVdqzWdpWWHj4fKyIdt2AQQsWJ6ILbb3fFBRZO8PFA1au6fzigSgd4dUD8bunofZBnMFR1QaiDIiPDQS4yAEyTgApis2naHm94pWbW7Q+d9p9Mm0xZierbRg5cXHmfsuh0uCMNNvM93F6/WTqcu/9sdmQFsNF1AISFKD2gbHro7GcJ3nf0ip88PFYNTk+Himzb0WD42etPHn8n1uxd3x+AubdzEbKrdiOiJLINZBluxKC63QL0MSxABHlVVfFdN8XDvHeOrPp78t2KCuRWbqICAQce4ATJkBiclMVm07Q82tFY3nsRsfaTVxMJwuP1f1D7LpeHVtpq7Wnv8AwodRr4vk6R0emjR2va1zCHNM5EeCuotExvDNW0WjeFlhxPgvSU7dgOvwUFVi73ggYtfdPh7oFLL3h4+xQO2junogQhd4dR7oNF+B6IMt7wBMkADE5KJnZEzERvLy3arTRtAMKES2GDj/AKhGf8vJeMGujFli228KfX2nUUmlZ2j/AC8c9hBkcV1eLLTLWL0neJctelqW5bd3F7eAgFIEH0L/AA80ZchujuFYlG/0D7mfkFS8Rzc1opHh1HBNNy45y289vyehtve8PkquXq2w4HqgZQZUyg02igQZ0U1PU+6BC1wC0g8HVHyFxvEtJODL0+meyzwZOev3UgqvZ3UQi94aCXGQGJXqtZtO0d3m94pWbWno89pG3mIZCjBgM+Z+yvdLpIxRvP1Ob1mtnPO0fSSW40TmjNKRIDpsNDi04H7HmslMlqdmTHltjno9ZZ9OwowABuP4tNPI8VuY89bfaVhj1Fb/AJtKxYnp8rOzrbX3fFBRZTvDxQM2kbp/OKBOB3h1QPRRunofZBhW3S0OF3nTP0ip8cvFYr5q1YcmelHmNL6ZiRzI7rODBh1J4laeTLN+/ZX5M1snfszwFiYkI8AOFceBy/st3Ra2+mvvHWvmGtqdPXNH3ZcSGWmRXXYc1M1Oek7wosmO2O3LaEVleApQ0NA6LdaYzYY7uLz9LRj4nDxWHUZoxUm37NrR6adRlikdvP5PqEaGGya2gAAAyAwXNzO87y7mlYrWKx4M2Lunr8BQ9KrbiOiBeaDT1YyHkgznPOZ80D8NgkKDAIM62MmSOdOS1dXpq6jHNJ/Rkx5JpbdmFsjIri8uO2O80t3haxaLRvCMWKGgucZAKKUte3LWOrxkyVx15rT0ed0hbnRDk0YD5PNX2m0tcMb/ANzm9Xq7Z528FFtNIKQIOKA9ZNLxodGvMsjUfde65L17Sy0zXr2lrWXtWR+8h3uh+DNZ66qfMM9dZPmDx7UwCO65p6D4KyRqqsn9XRUO1EIETD3cqfJSdVUnV0VWntcJHVwZcyfgD5Xi2q9Qx21nqGPatOR4lC8tGTaeuKw2zXt5YbZ727yzpLGwuyQdUAUiEaCHiR8DktrSavJpr81e3mGDPp65a7T3ZcWEWmR/Xouw0+opnpz0n/4ocuK2O3LZFjC4hrQSSZADEk4ALNMxEby8VrNpiI7vpGgNEbMy6f3jpF5GcqNHIfdc/qtROa328Oz4doo02Pr9U93oLKJtrXqtVYKrWZOpSnCnEoLLIJgzrXjVBfqxkPJBn612Z80DzYTch5IEnxCCQCcSgbhQwQCQCZIM3SMGZMsRgPDBVnEeH/1Feav1R/LPhz/D79nibfa3PdvAtAwblwrzWnp9NXDG3nyqNVqr57dekR4LLZaoUIdRLiICAUgQElA5JSCSAkiXZKEOolxEBAKRCNDDhI+HJbOm1V9Pfmp+3thzYa5a8tnouy+gDBOti/vP4R9APH+ojyV3qNd8asRWNo8s/DeGfBn4mTv4exgMBaCRM5nqtFdKLQ4h0gZDkgtszQ4TdWvFBC1G6Rdp0QU612Z80D2obkgTdHdmgaZBaQCRUhAtEikEgGgQMQYYIBImSgwe0GhmxCSyTXiXR1MD91r5sPN1ju1s+Dn6x3ePjQnNJa4EEYgrSmNukq2YmJ2lFeQBSBQOokIgIBEhEBEhAIBBxEBAMaSQAJk0AGJPIKY9HXw9PobQurIfFG+MG4hnM5n2W5hwcvWzfwafl+a3d6mFCBAJEyVtNxRGiFpIaZDLwQWwGBwm6pQQtDi0ybQSmglZxeBvVQW7O3JAptLs/QIGhZ2nh6lAs6O4EgGgoKBAwyC0gEipxxQURIpaSGmQCC2DDDhN1SgztM6NhxN1wlIUcMR48RyWLJii8MWXFXJHV5DSGiYkKpE2fWMPHJaN8Vqd1dkw2x9+xBeGJ1QBB1AIBEhAIgIOIBBxSHNHaLixzKG2nFxo0dT8Be6Y7X7PePFbJ9L1Wi9FtgVFX4F5A/4jgFu48NafmscWCtPzbcOC0gEipqcVmZ1ESKWkgGQCC6FCDhedUn9OCCqM8tMm0H5mgnAaHibqnDL2QRjm4ZNpPx90Fe0vz9AgZ2VvPzQLm0uCC9tnaRM4mqCl8dzTIYCiC1kEOF44lBXEilhutwCCcJgeJuxQQjm7ujAioNeSDGtPZuHFBcz9m7kN0/8Ajw8FrX09Z7dGrk0tZ616PPW/QkeF3mTH1NqPuFq3xXr3hp3wXp3hnzWNicmpHVAEAgEHJoBA3ZdHRYndYZfUaDzOPgvdcdrdoe6Yr37Q9Ro7skxtYzr5+kUb54n0W1TTRH1NzHpIj6mpDjFoutAAGAAkAtmIiOzbiIjpBltmaanjVSlS6OQZDAUQWsghwvHEoK4kUtN1uA/VBZChh4m7FBCK4sMm4Y/nkglCbfq7ggnsrefmgo2t3L1+6C4WVprVBUbSRQSpTyQWNs4dvGczVBW6MWm6JSGaCbIQeLxxOXkgi+IWG63DGqCTGayrulPP5QRiHV0bxzQdh/tO9SWXPr0QK2/RkI95gdPicfMSKx2xUt3hjtipbvDKHZiE8m6XN8Zj1r6rDOlr4lgnSVntJa09kXNExFB6tI+SvE6W3iWOdHPiSrOzMUmQcz1+y8/013j+kum/spGAmXM8z9k/prn9Jd2B2XcSAYgE8gT8heo0tvMpjSW8y04fZCE0Te9zpCdJNB96LJGlr5llro6+ZNWTR8FndhNnmQSfMmiy1xUr2hnrhpXtDT2NuZ9PssjKq2x2Q9fugu2RuZQVG0uFBKlPyqCxtnDqmczVBB0ctN0SkM0EmQQ8XjOZy8kEXxCw3W4c0EobL9XY4U/OaDkR2ro3jWqCG1uyHr90FuxjMoIbWRSQQSFmBrM1r5oIm0Fu6BhRBJsAO3iZTQRdFuborL9UEmw7+8acEHHP1dBXjXy+EA0ayppLJAO/Z4Vnny/VANOsoaSyQDmauorOlUA2Jf3TTig66Fc3hVBERi/dIlP9fhBI2cN3gcEEdpJpLGnnRBI2UCszRBDbDkEFmxjMoIbWcggmLKDWZrVBA2gtpLCiCQgB28TKaCJjFm6Ky/X5QSbDv7xog45+roK8a/nJANbrKmkqUQS2MZlAygy34lBowu6Og9kCEfvHqgds3dH5xQKWvvHw9kDNi7viUFNt73h8lBOw4Hqg5b+Hj8IOWHEoJ27AdfgoKrF3vBAxa+6fD3QKWbvDx9igdtHdPRAhC7w6j3QaL8D0QZaDWQZTkGnDwHQIM+N3j1KB2zd0IFLV3j4ewQM2Pu+JQUW3veHyUFthwPVAyg//2Q==',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              SizedBox(width: 40),

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.network(
                    'data:image/png;base64,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',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              SizedBox(width: 40),

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.network(
                    'data:image/png;base64,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',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShopPage()),
                );
              },

              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 60),
                padding: EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: (Colors.teal),
              ),

              child: Text(
                "Login",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),

          SizedBox(
            height: 60,
            width: double.infinity,
            child: Center(child: Text("Don't have an account?")),
          ),

          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },

              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 30),
                padding: EdgeInsets.symmetric(horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: (const Color.fromARGB(255, 204, 228, 225)),
              ),

              child: Text(
                "Register",
                style: TextStyle(fontSize: 15, color: Colors.teal),
              ),
            ),
          ),

          SizedBox(
            height: 50,
            width: double.infinity,
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPage()),
                  );
                },

                style: ElevatedButton.styleFrom(
                  minimumSize: Size(50, 30),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: (Colors.black),
                ),

                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
