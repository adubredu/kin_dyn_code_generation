function convert_matlab_kinematics_to_julia(input_filename, output_filename; 
                                        is_jacobian=false) 
    lines = readlines(input_filename, keep=true)
    lines = lines[1:end-22]
    arrayed_lines = []
    to_del = []
    for (i, line) in enumerate(lines)
        if occursin("argin_0" , line)
            line = replace(line, "("=>"[")
            line = replace(line, ")"=>"]")
        end
        if occursin("argin_0 =" , line)
            push!(to_del, i)
        end
        push!(arrayed_lines, line)
    end
    deleteat!(arrayed_lines, to_del)

    final_file = join(arrayed_lines)
    final_file = replace(final_file, ";"=>"")
    final_file = replace(final_file, "argin_0"=>"q")
    final_file = replace(final_file, "cell"=>"zeros")
    final_file = replace(final_file, "[varargout] = "=>"")
    final_file = replace(final_file, "varargin"=>"q")
    final_file = replace(final_file, "{:})"=>"")
    final_file = replace(final_file, "{"=>"[")
    final_file = replace(final_file, "}"=>"]")
    final_file = replace(final_file, "vertcat("=>"") 
    final_file = replace(final_file, "varargout[1]"=>"output1")
    final_file = replace(final_file, "varargout[2]"=>"output2")
    final_file = replace(final_file, "end\n"=>"")
    if is_jacobian
        final_file  *= "  return output1 \n end"
    else
        final_file *= "  return output1, output2 \n end"
    end

    fo = open(output_filename, "w")
    write(fo, final_file)
    close(fo) 
end


function convert_cpp_kinematics_to_julia(input_filename, output_filename)
    lines = readlines(input_filename, keep=true)
    lines = lines[55:end]
    to_del = [] 

    for (i, line) in enumerate(lines) 
        if length(line) > 8
            if line[1:8] == "  double"
                push!(to_del, i) 
            end
        end
    end 
    deleteat!(lines, to_del)

    kin = join(lines)
    kin = replace(kin, ";"=>"")
    kin = replace(kin, "]"=>"+1]")
    kin = replace(kin, ".*"=>".0 * ")
    kin = replace(kin, ". +"=>".0 + ")
    kin = replace(kin, "}"=>"end")
    kin = replace(kin, "Cos"=>"cos")
    kin = replace(kin, "Sin"=>"sin")

    fo = open(output_filename, "w")
    write(fo, kin)
    close(fo) 
end