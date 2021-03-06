<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Hallo, Welt!</title>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <div class="container">
            <!-- Eingabefelder, nur vor dem Abschicken anzeigen -->
            <c:if test="${vorname == null}">
                <h1>Wie heißt du?</h1>

                <form method="POST">
                    <input name="vorname" type="text" placeholder="Vorname" />
                    <input name="nachname" type="text" placeholder="Nachname" />
                    <input type="submit" value="Abschicken" />
                </form>
            </c:if>

            <!-- Begrüßung, nur nach dem Abschicken anzeigen -->
            <c:if test="${vorname != null}">
                <h1>Hallo, ${vorname} ${nachname}!</h2>
                <h2>Sei gegrüßt!</h2>

                <a href="">Nochmal</a>
            </c:if>

            <!-- Aktuelles Datum immer anzeigen -->
            <p>
                <small>
                    Heute ist der ${tagesdatum}.
                </small>
            </p>
        </div>
    </body>
</html>
