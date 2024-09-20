{ pkgs }:
let
  nodejs = pkgs.nodejs-20_x;
  rush = pkgs.nodePackages.rush;
in
pkgs.mkShell {
  buildInputs = [
    nodejs
    rush
    pkgs.docker
    pkgs.docker-compose
  ];

  shellHook = ''
    echo "Setting environment for Huly Platform..."
    export PATH=$PATH:$(pwd)/node_modules/.bin
    if ! command -v docker &> /dev/null
    then
        echo "Docker not found, installing Docker..."
        sudo apt-get update
        sudo apt-get install -y docker.io
    fi
    if ! command -v docker-compose &> /dev/null
    then
        echo "Docker Compose not found, installing Docker Compose..."
        sudo apt-get install -y docker-compose
    fi
  '';
}
