
   
/* LSOracle: A learning based Oracle for Logic Synthesis
 * MIT License
 * Copyright 2019 Laboratory for Nano Integrated Systems (LNIS)
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 */
#pragma once
#include <alice/alice.hpp>

#include <mockturtle/mockturtle.hpp>

#include <stdio.h>
#include <fstream>

#include <sys/stat.h>
#include <stdlib.h>
#include <math.h>
#include "algorithms/optimization/resynthesis.hpp"



namespace alice
{
class write_partition_command : public alice::command
{

public:
    explicit write_partition_command(const environment::ptr &env)
        : command(env, "Writes the partition to file")
    {

        opts.add_option("--filename,filename", filename,
                        "BLIF file to write out to")->required();
        opts.add_option("--num,-n", partnum, "Part to write.");
        add_flag("--aig,-a", "Partition stored AIG (Default)");
        add_flag("--mig,-m", "Partition stored MIG");
        add_flag("--xag,-x", "Partition stored XAG");
        add_flag("--xmg,-g", "Partition stored XMG");
    }

public:
    
    template <typename network>
    void write_part(string name){
        oracle::partition_manager_junior<network> partitions =*store<std::shared_ptr<oracle::partition_manager_junior<network>>>().current();
        mockturtle::names_view<network> &ntk = partitions.get_network();
        std::string output_file = std::string(filename);
        // std::string output_file = fmt::format("{}.work.v", temp_prefix);
        std::cout << "Writing out to " << output_file << std::endl;
        std::ofstream verilog(output_file);
        verilog << "// Generated by LSOracle" << std::endl;
        std::vector<int> optimized(partitions.count());
        for (int i = 0; i < partitions.count(); i++) {
            oracle::write_child<network>(i, partitions, verilog);    
        }
    }

    void execute()
    {
        if (is_set("mig")) {
            write_part<mockturtle::mig_network>("MIG");
        } else if (is_set("xag")) {
            write_part<mockturtle::xag_network>("XAG");
        } else if (is_set("xmg")) {
            write_part<mockturtle::xmg_network>("XMG");
        } else {
            write_part<mockturtle::aig_network>("AIG");
        }
    }
private:
    std::string filename{};
    int partnum;
};

ALICE_ADD_COMMAND(write_partition, "Output");
}
