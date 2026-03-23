nextflow.enable.dsl = 2

process GPU_TASK {
    /*
     * Invalid GPU request for ICA:
     * - `accelerator` is not supported in ICA Kubernetes execution
     */
    accelerator 1

    output:
    path "gpu.txt"

    script:
    """
    echo "This GPU task should fail in ICA" > gpu.txt
    """
}

workflow {
    GPU_TASK()
}
