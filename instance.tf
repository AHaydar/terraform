resource "google_compute_instance" "default" {
    project = "extreme-window-246609"
    name = "terraform"
    machine_type = "n1-standard-1"
    zone = "australia-southeast1-b"

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-9"
        }
    }

    network_interface {
        network = "default"
        access_config{

        }
    }
}
