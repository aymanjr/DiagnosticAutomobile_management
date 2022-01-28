<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <title>Employee</title>
</head>

<body>

    <!-- Modal Ajouter Employee -->
    <div class="modal fade" id="ajouteremp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ajouter Employee</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputNom">Nom</label>
                                <input type="text" class="form-control" id="inputNom" placeholder="Nom">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPrenom">Prenom</label>
                                <input type="text" class="form-control" id="inputPrenom" placeholder="Prenom">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputDatenaissance">Date Naissance</label>
                                <input type="date" class="form-control" id="inputdatenaissance" placeholder="datenaissance">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputVille">Ville</label>
                                <select class="form-control form-control-sm">
                                    <option value="none" selected disabled hidden>choissez ville</option>
                                    <option>ville1</option>
                                    <option>ville2</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputTelephone">Telephone</label>
                            <input type="text" class="form-control" id="inputTelephone" placeholder="Telephone">
                        </div>
                        <div class="form-group">
                            <label for="inputEmail">E-mail</label>
                            <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail">Status</label>
                            <select class="form-control form-control-sm">
                                <option>Active</option>
                                <option>Disable</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-success">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    <!-- end modal -->

    <!-- Modal Update Employee -->
    <div class="modal fade" id="updatemp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Update Employee</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputNom">Nom</label>
                                <input type="text" class="form-control" id="inputNom" placeholder="Nom">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPrenom">Prenom</label>
                                <input type="text" class="form-control" id="inputPrenom" placeholder="Prenom">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputDatenaissance">Date Naissance</label>
                                <input type="date" class="form-control" id="inputdatenaissance" placeholder="datenaissance">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputVille">Ville</label>
                                <select class="form-control form-control-sm">
                                    <option value="none" selected disabled hidden>choissez ville</option>
                                    <option>ville1</option>
                                    <option>ville2</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputTelephone">Telephone</label>
                            <input type="text" class="form-control" id="inputTelephone" placeholder="Telephone">
                        </div>
                        <div class="form-group">
                            <label for="inputEmail">E-mail</label>
                            <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail">Status</label>
                            <select class="form-control form-control-sm">
                                <option>Active</option>
                                <option>Disable</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-success">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    <!-- End modal -->


    <?php
      include 'nav.php';
    ?>

        <!-- Page Content  -->


        <div id="content" class="p-4 p-md-5 pt-5 text-center">
            
 
            <div class="col-lg-12 d-flex justify-content-between align-items-center">
                <div>
                    <h4 class="text-center">Employee</h4>
                </div>
                <div>
                    <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#ajouteremp">Ajouter Employee</button>
                </div>
            </div>
            <hr>
            <!--  -->
            <div class="row">
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-primary text-white mb-4">
                        <div class="card-body">Nomber Employee</div>
                        <div class="card-footer text-center ">
                            <div class="small text-white ">1000</div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-warning text-white mb-4">
                        <div class="card-body">Employee Disble</div>
                        <div class="card-footer text-center ">
                            <div class="small text-white ">1000</div>
                            <!-- <div class="small text-white"><i class="fas fa-angle-right"></i></div> -->
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-success text-white mb-4">
                        <div class="card-body">Employee Active</div>
                        <div class="card-footer text-center ">
                            <div class="small text-white ">1000</div>
                            <!-- <div class="small text-white"><i class="fas fa-angle-right"></i></div> -->
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-danger text-white mb-4">
                        <div class="card-body">Nouvelle Employee</div>
                        <div class="card-footer text-center ">
                            <div class="small text-white ">1000</div>
                            <!-- <div class="small text-white"><i class="fas fa-angle-right"></i></div> -->
                        </div>
                    </div>
                </div>
            </div>
            <!--  -->
            <hr>
            <div class="row">
                <div class="col-lg-12">
                    <div id="showAlert">Messgae If Error</div>
                </div>
            </div>



            <table class="table table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th>ID</th>
                        <th>NOM</th>
                        <th>PRENOM</th>
                        <th>DATE NAISSANCE</th>
                        <th>VILLE</th>
                        <th>TELEPHONE</th>
                        <th>E-MAIL</th>
                        <th>STATUS</th>

                        <th>ACTION</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>AHMED</td>
                        <td>FLAN</td>
                        <td>1988</td>
                        <td>CASABLANCA</td>
                        <td>06000000</td>
                        <td>E-MAIL@EMAIL.COM</td>
                        <td class="text-success">TURE</td>

                        <td>
                            <a class="btn btn-warning btn-sm rounded-pill py-0" href="#" id="" data-toggle="modal" data-target="#updatemp">Modifer</a>
                            <a class="btn btn-danger btn-sm rounded-pill py-0" href="#" id="">Supprission</a>
                        </td>

                    </tr>
                    <tr>
                        <td>1</td>
                        <td>AHMED</td>
                        <td>FLAN</td>
                        <td>1988</td>
                        <td>CASABLANCA</td>
                        <td>06000000</td>
                        <td>E-MAIL@EMAIL.COM</td>
                        <td class="text-danger">FALSE</td>

                        <td>
                            <a class="btn btn-warning btn-sm rounded-pill py-0" id="" href="#" data-toggle="modal" data-target="#updatemp">Modifer</a>
                            <a class="btn btn-danger btn-sm rounded-pill py-0" href="#" id="">Supprission</a>
                        </td>

                    </tr>

                </tbody>
            </table>
        </div>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>