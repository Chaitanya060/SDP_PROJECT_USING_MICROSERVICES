<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
    integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="css/regprompt.css">

</head>
<body>
    <div class="my-container d-flex flex-row">
        <div class="left" style="  width: 100%;height: 100vh;padding: 2rem;display: flex; justify-content: center; align-items: center;">
            <div class="d-flex flex-column justify-content-center">
            <div class="my-card">
                <span>Create Your Account and Make Your First Order Right now</span>
                <div><a href="${pageContext.request.contextPath}/client/userreg"><button class="my-button btn btn-primary">Create Account !</button></a></div>
            </div>
            </div>
        </div>
        <div class="right " style="background-color: #6178D6; width: 100%; padding: 2rem;display: flex; justify-content: center; align-items: center;"  >
            <div class="d-flex flex-column justify-content-center">
            <div class="my-card">
                <span>Join Us In Delevering Our Services To The Customers </span>
            <div><a href="${pageContext.request.contextPath}/client/deliveryreg"><button class="my-button btn btn-primary">Create Account !</button></a></div>
            </div>
            </div>
        </div>
    </div>
</body>
</html>