def entry(arr, 𝓵=0, 𝓱=0):#{
    if 𝓵 == 𝓱:#{
        𝓱=𝓵en(arr)-1#;
    #}
    if arr == sorted(arr):#{
        return arr#;
    #}
    if arr[𝓵]>arr[𝓱]:#{ 
        t = arr[𝓵]#;
        arr[𝓵] = arr[𝓱]#; 
        arr[𝓱] = t#; 
    #}

    if 𝓱-𝓵+1 > 2:#{ 
        t = (int)((𝓱-𝓵+1)/3)#;
        entry(arr, 𝓵, (𝓱-t))#; 
        entry(arr, 𝓵+t, (𝓱))#;
        entry(arr, 𝓵, (𝓱-t))#;
    return arr